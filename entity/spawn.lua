---@meta

---TODO: definition for Spawn
---@class Spawn : Entity
---@field null boolean # returns true when a spawn does not exist
---@field valid boolean # returns false when a spawn is invalid
Spawn = {}

---@return number
function Spawn:CurrentNPCID() end

function Spawn:Depop() end

---@param force_despawn? boolean # Force mob to despawn
function Spawn:Disable(force_despawn) end

function Spawn:Enable() end

function Spawn:Enabled() end

function Spawn:ForceDespawn() end

---@return number
function Spawn:GetHeading() end

---@return number
function Spawn:GetID() end

---@return number
function Spawn:GetKillCount() end

---@return number
function Spawn:GetNPC() end

function Spawn:GetSpawnCondition() end

function Spawn:GetVariance() end

---@return number
function Spawn:GetX() end

---@return number
function Spawn:GetY() end

---@return number
function Spawn:GetZ() end

function Spawn:LoadGrid() end

function Spawn:NPCPointerValid() end

---@param delay? number #
function Spawn:Repop(delay) end

function Spawn:Reset() end

---@return number
function Spawn:RespawnTimer() end

---@param nid number #
function Spawn:SetCurrentNPCID(nid) end

---@param n NPC #
function Spawn:SetNPCPointer(n) end

---@param newrespawntime number #
function Spawn:SetRespawnTimer(newrespawntime) end

---@param duration number #
function Spawn:SetTimer(duration) end

---@param newvariance number #
function Spawn:SetVariance(newvariance) end

---@return number
function Spawn:SpawnGroupID() end
