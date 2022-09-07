--#region Config

LOG_SKILL_CASTS = false
--Option to log skill casts (autos also count)

LOG_DAMAGE_TO_AVATAR = false
--Option to log damage dealt to characters

LOG_ZERO_DAMAGE = false
--Option to log damage registered as 0 (happens quite often for some reason)

FILE_LOGGING = false
--Write logs to file, filename will always be 'latest.txt' and will append

TABLE_FORMAT = true
--Option to have logs be neatly formatted with uniform spacing (and colors!)
--Disable for performance and to save whitespace on logs
--TO DO: a better frontend log parser with neat graphs and stuff

SHOW_PACKETS_ON_FILTER = true
--Option to show packets in captures window after applying filter
--Disabling *might* improve performance but I don't think I've seen much of a difference

USE_REACTION_CORRECTION = true
--EXPERIMENTAL: Might make reaction ownership attribution better or worse
--TO DO: parser to do post-processing of reaction numbers to replace this

--#endregion

GAME_VERSION = "3.0.0"

local packet_ids = require("data.packet_ids")
local resolver = require("resolver")
local util = require("output.util")
util.init()

local last_uid = 0
local last_packets = {
	SceneTeamUpdateNotify = 0,
	CombatInvocationsNotify = 0,
	AbilityInvocationsNotify = 0,
	EvtDoSkillSuccNotify = 0
}

function on_filter(packet)

	local uid = packet:uid()
	local pid = packet:mid()
	local first_run = false

	if uid > last_uid then
		last_uid = uid
		first_run = true
	end

	--Packet is always sent when loading into a new scene / changing teams (even just swapping characters around)
	if pid == packet_ids.SceneTeamUpdateNotify then
		if first_run then return true end
		if last_packets.SceneTeamUpdateNotify >= uid then
			return SHOW_PACKETS_ON_FILTER
		end
		last_packets.SceneTeamUpdateNotify = uid

		resolver.reset_ids()
		util.reset_last_time()

		local node = packet:content():node()
		local list = node:field("scene_team_avatar_list"):value():get()

		local team_text = "TEAM UPDATE: "
		local offsets_text = "AID OFFSETS: "
		for i in ipairs(list) do
			local team_avatar = list[i]:get()
			local guid = team_avatar:field("avatar_guid"):value():get()
			local entity_id = team_avatar:field("entity_id"):value():get()

			local entity_info = team_avatar:field("scene_entity_info"):value():get()
			local avatar_info = entity_info:field("avatar"):value():get()
			local avatar_id = avatar_info:field("avatar_id"):value():get()
			resolver.add_avatar(guid, entity_id, avatar_id)
			team_text = team_text .. resolver.get_id(avatar_id) .. (i == 4 and "" or ", ")

			local block = team_avatar:field("ability_control_block"):value():get()
			local embryos = block:field("ability_embryo_list"):value():get()

			local offset = -1
			for _, a in ipairs(embryos) do
				local aid = a:get():field("ability_id"):value():get()
				local hash = a:get():field("ability_name_hash"):value():get()
				resolver.add_ability_hash(entity_id, aid, hash)
				if offset == -1 then
					offset = aid
					offsets_text = offsets_text .. aid .. (i == 4 and "" or ", ")
				end
			end
		end

		util.write_header(team_text, offsets_text)
		return SHOW_PACKETS_ON_FILTER
	end

	if packet:direction() ~= NetIODirection.Send then
		return false
	end

	if pid == packet_ids.EvtCreateGadgetNotify then
		local node = packet:content():node()
		local entity_id = node:field("entity_id"):value():get()
		
		local owner_id = node:field("owner_entity_id"):value():get()
		local config_id = node:field("config_id"):value():get()
		resolver.add_gadget(entity_id, owner_id, config_id)

		if last_uid > uid then
			return SHOW_PACKETS_ON_FILTER
		end
		return true
	end

	if pid == packet_ids.UnionCmdNotify then
		if last_uid > uid then
			return false
		end
		return true
	
	elseif pid == packet_ids.CombatInvocationsNotify then
		local node = packet:content():node()
		local list = node:field("invoke_list"):value():get()[1]:get()
		local arg = list:field("argument_type"):value():get()

		--COMBAT_TYPE_ARGUMENT_EVT_BEING_HIT
		if arg ~= 1 then return false end
		if first_run then return true end
		
		if list:has_field("combat_data_unpacked") then
			local data = list:field("combat_data_unpacked"):value():get()
			local attack = data:field("attack_result"):value():get()

			local damage = attack:field("damage"):value():get()
			if not LOG_ZERO_DAMAGE and damage == 0 then
				return false
			end

			local defender = attack:field("defense_id"):value():get()
			if not LOG_DAMAGE_TO_AVATAR and resolver.id_type(defender) == "Avatar" then
				return false
			end

			if last_packets.CombatInvocationsNotify >= uid then
				return SHOW_PACKETS_ON_FILTER
			end
			last_packets.CombatInvocationsNotify = uid

			local crit = attack:field("is_crit"):value():get()
			local apply = resolver.get_apply(attack:field("element_durability_attenuation"):value():get())
			local element = resolver.get_element(attack:field("element_type"):value():get())
			local amp_type = resolver.get_amp_type(attack:field("amplify_reaction_type"):value():get())
			local amp_rate = attack:field("element_amplify_rate"):value():get()
			local count = attack:field("attack_count"):value():get()

			local ability = attack:field("ability_identifier"):value():get()
			local aid = ability:field("instanced_ability_id"):value():get()
			local mid = ability:field("instanced_modifier_id"):value():get()
			local caster = ability:field("ability_caster_id"):value():get()
			local reaction = resolver.get_reaction(aid, element, amp_type)

			local attacker = attack:field("attacker_id"):value():get()
			local source = resolver.get_source(attacker, aid, element, defender)
			attacker = resolver.get_attacker(attacker, caster, aid, damage, defender)
			defender = resolver.id_type(defender) == "Gadget" and resolver.get_source(defender) or resolver.get_id(defender)

			local timestamp = util.convert_time(attack:field("attack_timestamp_ms"):value():get())
			local time = util.format_time(timestamp)
			local delta = util.delta_time(timestamp)
			
			util.write_row("DAMAGE", uid, time, delta, source, attacker, 
			damage, crit, apply, element, reaction, amp_rate, count, aid, mid, defender)
			return SHOW_PACKETS_ON_FILTER
		end
	
	elseif pid == packet_ids.AbilityInvocationsNotify then
		local node = packet:content():node()
		local list = node:field("invokes"):value():get()[1]:get()
		local arg = list:field("argument_type"):value():get()

		--ABILITY_INVOKE_ARGUMENT_META_UPDATE_BASE_REACTION_DAMAGE = 19
		--ABILITY_INVOKE_ARGUMENT_META_TRIGGER_ELEMENT_REACTION = 20
		if arg ~= 19 and arg ~= 20 then return false end
		if first_run then return true end

		if list:has_field("ability_data_unpacked") then

			local ability = list:field("ability_data_unpacked"):value():get()

			if last_packets.AbilityInvocationsNotify >= uid then
				return SHOW_PACKETS_ON_FILTER
			end
			last_packets.AbilityInvocationsNotify = uid

			if arg == 19 then
				local reaction = ability:field("reaction_type"):value():get()
				local caster = ability:field("source_caster_id"):value():get()
				resolver.update_reaction(reaction, caster)
			else
				local reaction = ability:field("element_reaction_type"):value():get()
				local trigger = ability:field("trigger_entity_id"):value():get()
				--local source = ability:field("element_source_type"):value():get()
				--local reactor = ability:field("element_reactor_type"):value():get()
				resolver.update_reaction(reaction, trigger)
				--print("trigger " .. reaction .. " " .. resolver.get_id(trigger) .. 
				--" / " .. resolver.get_element(source) .. " -> " .. resolver.get_element(reactor))
			end

			--[[Fuck this entire bullshit good lord
			if not list:has_field("head") then
				return SHOW_PACKETS_ON_FILTER
			end
			
			local head = list:field("head"):value():get()
			local target_id = head:field("target_id"):value():get()
			local entity_id = list:field("entity_id"):value():get()
			local apply_id = ability:field("apply_entity_id"):value():get()
			local action = ability:field("action"):value():get() == 1 and true or false

			local aid = head:field("instanced_ability_id"):value():get()
			local mid = head:field("instanced_modifier_id"):value():get()
			local mid_local = ability:field("modifier_local_id"):value():get()
			
			--MODIFIER_ACTION_REMOVED
			if mid and action then
				resolver.remove_modifier(mid)
			elseif mid and apply_id ~= 0 then
				resolver.add_modifier(mid, apply_id)
			end

			--[[if arg == 1 then
				print("ModChange " .. aid .. " " .. mid .. " " .. mid_local .. " " .. tostring(action) .. " / " ..
				resolver.get_id(apply_id) .. " " .. resolver.get_id(entity_id) .. " " .. resolver.get_id(target_id))
			else
				print(" SetApply " .. aid .. " " .. mid .. " " .. mid_local .. " " .. tostring(action) .. " / " ..
				resolver.get_id(apply_id) .. " " .. resolver.get_id(entity_id) .. " " .. resolver.get_id(target_id))
			end]]
			return SHOW_PACKETS_ON_FILTER
		end
	
	elseif pid == packet_ids.EvtDoSkillSuccNotify and LOG_SKILL_CASTS then

		if first_run then return true end
		if last_packets.EvtDoSkillSuccNotify >= uid then
			return SHOW_PACKETS_ON_FILTER
		end
		last_packets.EvtDoSkillSuccNotify = uid

		local node = packet:content():node()
		local caster = resolver.get_id(node:field("caster_id"):value():get())
		local skill = resolver.get_skill(node:field("skill_id"):value():get())

		--[[local timestamp = util.convert_time(packet:timestamp())
		local time = util.format_time(timestamp)
		local delta = util.delta_time(timestamp)]]

		util.write_row("SKILL", uid, nil, nil, skill, caster)
	end

	return false
end




