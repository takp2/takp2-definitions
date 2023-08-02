---@meta

---TODO: definition for Raid
---@class Raid
---@field null boolean # returns true when a raid does not exist
---@field valid boolean # returns false when a raid is invalid
Raid = {}

---@param penalty number # 
---@param group_id number # 
function Raid:BalanceHP(penalty, group_id) end

---@param caster Mob # 
---@param spell_id number # 
---@param group_id number # 
function Raid:CastGroupSpell(caster, spell_id, group_id) end

---@param expedition_name string # 
---@param event_name string # 
---@param max_check_count? number # 
function Raid:DoesAnyMemberHaveExpeditionLockout(expedition_name, event_name, max_check_count) end

---@param member_index number # 
function Raid:GetClientByIndex(member_index) end

---@param c string|Client # 
function Raid:GetGroup(c) end

---@param member_index number # 
function Raid:GetGroupNumber(member_index) end

function Raid:GetHighestLevel() end

function Raid:GetID() end

function Raid:GetLowestLevel() end

---@param member_index number # 
function Raid:GetMember(member_index) end

---@param other Mob # 
function Raid:GetTotalRaidDamage(other) end

---@param group_id number # 
function Raid:GroupCount(group_id) end

---@param name string # 
function Raid:IsGroupLeader(name) end

---@param c Client|string # 
function Raid:IsLeader(c) end

---@param name string # 
function Raid:IsRaidMember(name) end

function Raid:RaidCount() end

---@param exp number # 
---@param other Mob # 
function Raid:SplitExp(exp, other) end

---@param gid number # 
---@param copper number # 
---@param silver number # 
---@param gold number # 
---@param platinum number # 
---@param splitter? Client # 
function Raid:SplitMoney(gid, copper, silver, gold, platinum, splitter) end

---@param sender Mob # 
---@param zone_id number # 
---@param instance_id number # 
---@param x number # 
---@param y number # 
---@param z number # 
---@param h number # 
---@param group_id number # 
function Raid:TeleportGroup(sender, zone_id, instance_id, x, y, z, h, group_id) end

---@param sender Mob # 
---@param zone_id number # 
---@param instance_id number # 
---@param x number # 
---@param y number # 
---@param z number # 
---@param h number # 
function Raid:TeleportRaid(sender, zone_id, instance_id, x, y, z, h) end
