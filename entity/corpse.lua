---@meta

---TODO: definition for Corpse
---@class Corpse
---@field null boolean # returns true when a corpse does not exist
---@field valid boolean # returns false when a corpse is invalid
Corpse = {}

---@param itemnum number #
---@param charges number #
---@param slot? number #
---@param aug1? number #
---@param aug2? number #
---@param aug3? number #
---@param aug4? number #
---@param aug5? number #
function Corpse:AddItem(itemnum, charges, slot, aug1, aug2, aug3, aug4, aug5) end

---@param who Mob #
function Corpse:AddLooter(who) end

---@param them Mob #
---@param slot number #
function Corpse:AllowMobLoot(them, slot) end

function Corpse:Bury() end

---@param charid number #
---@return boolean
function Corpse:CanMobLoot(charid) end

---@param item_id number #
---@return number
function Corpse:CountItem(item_id) end

---@return number
function Corpse:CountItems() end

function Corpse:Delete() end

function Corpse:Depop() end

---@return number
function Corpse:GetCharID() end

---@return number
function Corpse:GetCopper() end

---@return number
function Corpse:GetDBID() end

---@return number
function Corpse:GetDecayTime() end

---@param item_id number #
---@return number
function Corpse:GetFirstSlotByItemID(item_id) end

---@return number
function Corpse:GetGold() end

---@param loot_slot number #
---@return number
function Corpse:GetItemIDBySlot(loot_slot) end

---@return CorpseLootList
function Corpse:GetLootList() end

---@return string
function Corpse:GetOwnerName() end

---@return number
function Corpse:GetPlatinum() end

---@return number
function Corpse:GetSilver() end

---@param equipSlot number #
---@return number
function Corpse:GetWornItem(equipSlot) end

---@param item_id number #
---@return boolean
function Corpse:HasItem(item_id) end

---@return boolean
function Corpse:IsEmpty() end

---@return boolean
function Corpse:IsLocked() end

---@return boolean
function Corpse:IsRezzed() end

function Corpse:Lock() end

function Corpse:RemoveCash() end

---@param lootslot number #
function Corpse:RemoveItem(lootslot) end

---@param item_id number #
---@param quantity? number #
function Corpse:RemoveItemByID(item_id, quantity) end

function Corpse:ResetDecayTimer() end

function Corpse:ResetLooter() end

---@return boolean
function Corpse:Save() end

---@param copper number #
---@param silver number #
---@param gold number #
---@param platinum number #
function Corpse:SetCash(copper, silver, gold, platinum) end

---@param decaytime number #
function Corpse:SetDecayTimer(decaytime) end

---@param client Client #
---@param spell number #
---@param checkdistance number #
---@return boolean
function Corpse:Summon(client, spell, checkdistance) end

function Corpse:UnLock() end
