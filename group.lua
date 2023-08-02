---@meta

---Groups contain a list of members with clients or bots
---@class Group
---@field null boolean # returns true when a group does not exist
---@field valid boolean # returns false when a group is invalid
Group = {}

---@param caster Mob #
---@param spell_id number #
function Group:CastGroupSpell(caster, spell_id) end

function Group:DisbandGroup() end

---@param expedition_name string #
---@param event_name string #
---@param max_check_count number #
function Group:DoesAnyMemberHaveExpeditionLockout(expedition_name, event_name, max_check_count) end

---@param expedition_name string #
---@param event_name string #
function Group:DoesAnyMemberHaveExpeditionLockout(expedition_name, event_name) end

function Group:GetAverageLevel() end

function Group:GetHighestLevel() end

function Group:GetID() end

function Group:GetLeader() end

function Group:GetLeaderName() end

function Group:GetLowestLevel() end

---@param member_index number #
function Group:GetMember(member_index) end

---@param other Mob #
function Group:GetTotalGroupDamage(other) end

function Group:GroupCount() end

---@param sender Mob #
---@param language number #
---@param message string #
function Group:GroupMessage(sender, language, message) end

---@param sender Mob #
---@param message string #
function Group:GroupMessage(sender, message) end

---@param mob Mob #
function Group:IsGroupMember(mob) end

---@param leader Mob #
function Group:IsLeader(leader) end

---@param leader Mob #
function Group:SetLeader(leader) end

---@param exp number #
---@param other Mob #
function Group:SplitExp(exp, other) end

---@param copper number #
---@param silver number #
---@param gold number #
---@param platinum number #
---@param splitter Client #
function Group:SplitMoney(copper, silver, gold, platinum, splitter) end

---@param copper number #
---@param silver number #
---@param gold number #
---@param platinum number #
function Group:SplitMoney(copper, silver, gold, platinum) end

---@param sender Mob #
---@param zone_id number #
---@param instance_id number #
---@param x number #
---@param y number #
---@param z number #
---@param h number #
function Group:TeleportGroup(sender, zone_id, instance_id, x, y, z, h) end
