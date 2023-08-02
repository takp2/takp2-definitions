---@meta

---TODO: definition for Expedition
---@class Expedition
---@field null boolean # returns true when an expedition does not exist
---@field valid boolean # returns false when an expedition is invalid
Expedition = {}

---@param event_name string #
---@param seconds number #
function Expedition:AddLockout(event_name, seconds) end

---@param event_name string #
---@param seconds number #
---@param members_only? boolean #
function Expedition:AddLockoutDuration(event_name, seconds, members_only) end

---@param seconds number #
function Expedition:AddReplayLockout(seconds) end

---@param seconds number #
---@param members_only? boolean #
function Expedition:AddReplayLockoutDuration(seconds, members_only) end

function Expedition:GetDynamicZoneID() end

function Expedition:GetID() end

function Expedition:GetInstanceID() end

function Expedition:GetLeaderName() end

---@return { [number]:number }
function Expedition:GetLockouts() return {} end

---@param npc_type_id number #
function Expedition:GetLootEventByNPCTypeID(npc_type_id) end

---@param spawn_id number #
function Expedition:GetLootEventBySpawnID(spawn_id) end

function Expedition:GetMemberCount() end

function Expedition:GetName() end

function Expedition:GetSecondsRemaining() end

function Expedition:GetUUID() end

function Expedition:GetZoneID() end

function Expedition:GetZoneName() end

function Expedition:GetZoneVersion() end

---@param event_name string #
function Expedition:HasLockout(event_name) end

function Expedition:HasReplayLockout() end

function Expedition:IsLocked() end

function Expedition:RemoveCompass() end

---@param event_name string #
function Expedition:RemoveLockout(event_name) end

---@param zone_id number #
---@param x number #
---@param y number #
---@param z number #
function Expedition:SetCompass(zone_id, x, y, z) end

---@param zone_name string #
---@param x number #
---@param y number #
---@param z number #
function Expedition:SetCompass(zone_name, x, y, z) end

---@param lock_expedition boolean #
function Expedition:SetLocked(lock_expedition) end

---@param lock_expedition boolean #
---@param lock_msg number #
function Expedition:SetLocked(lock_expedition, lock_msg) end

---@param lock_expedition boolean #
---@param lock_msg number #
---@param msg_color number #
function Expedition:SetLocked(lock_expedition, lock_msg, msg_color) end

---@param npc_type_id number #
---@param event_name string #
function Expedition:SetLootEventByNPCTypeID(npc_type_id, event_name) end

---@param spawn_id number #
---@param event_name string #
function Expedition:SetLootEventBySpawnID(spawn_id, event_name) end

---@param enable boolean #
function Expedition:SetReplayLockoutOnMemberJoin(enable) end

---@param zone_id number #
---@param x number #
---@param y number #
---@param z number #
---@param heading number #
function Expedition:SetSafeReturn(zone_id, x, y, z, heading) end

---@param zone_name string #
---@param x number #
---@param y number #
---@param z number #
---@param heading number #
function Expedition:SetSafeReturn(zone_name, x, y, z, heading) end

---@param seconds_remaining number #
function Expedition:SetSecondsRemaining(seconds_remaining) end

---@param dz_switch_id number #
function Expedition:SetSwitchID(dz_switch_id) end

---@param x number #
---@param y number #
---@param z number #
---@param heading number #
function Expedition:SetZoneInLocation(x, y, z, heading) end

---@param event_name string #
---@param duration number #
function Expedition:UpdateLockoutDuration(event_name, duration) end

---@param event_name string #
---@param duration number #
---@param members_only boolean #
function Expedition:UpdateLockoutDuration(event_name, duration, members_only) end
