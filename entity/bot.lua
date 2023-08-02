---@meta

---A Bot is a server driven client that can be grouped, similar to a mercenary
---@class Bot
---@field null boolean # returns true when a bot does not exist
---@field valid boolean # returns false when a bot is invalid
Bot = {}

---@param slot_id number #
---@param item_id number #
---@param charges number #
---@param attuned? boolean #
---@param augment_one? number #
---@param augment_two? number #
---@param augment_three? number #
---@param augment_four? number #
---@param augment_five? number #
---@param augment_six? number #
function Bot:AddBotItem(slot_id, item_id, charges, attuned, augment_one, augment_two, augment_three, augment_four, augment_five, augment_six) end

---@param spell_id number #
---@param duration? number #
---@param allow_pets? boolean #
function Bot:ApplySpell(spell_id, duration, allow_pets) end

---@param spell_id number #
---@param duration? number #
---@param allow_pets? boolean #
function Bot:ApplySpellGroup(spell_id, duration, allow_pets) end

---@param is_instant? boolean #
function Bot:Camp(is_instant) end

---@param item_id number #
---@return number
function Bot:CountBotItem(item_id) end

---@param item_id number #
---@return number
function Bot:CountItemEquippedByID(item_id) end

function Bot:Escape() end

---@param value number #
---@param target_x number #
---@param target_y number #
---@param target_z number #
---@param ignore_los? boolean #
---@param clip_trough_walls? boolean #
---@overload fun(target_x:number, target_y:number, target_z:number, ignore_los?:boolean, clip_trough_walls?:boolean)
function Bot:Fling(value, target_x, target_y, target_z, ignore_los, clip_trough_walls) end

---@param slot_id number #
---@return ItemInst
function Bot:GetAugmentAt(slot_id) end

---@param slot_id number #
---@return number
function Bot:GetAugmentIDAt(slot_id) end

---@return number
function Bot:GetBaseAGI() end

---@return number
function Bot:GetBaseCHA() end

---@return number
function Bot:GetBaseDEX() end

---@return number
function Bot:GetBaseINT() end

---@return number
function Bot:GetBaseSTA() end

---@return number
function Bot:GetBaseSTR() end

---@return number
function Bot:GetBaseWIS() end

---@return number
function Bot:GetBotID() end

---@param slot_id number #
---@return ItemInst
function Bot:GetBotItem(slot_id) end

---@param slot_id number #
function Bot:GetBotItemIDBySlot(slot_id) end

---@return number
function Bot:GetExpansionBitmask() end

---@return Group
function Bot:GetGroup() end

---@return Mob
function Bot:GetOwner() end

---@return number
function Bot:GetRawItemAC() end

---@return number
function Bot:GetSpellDamage() end

---@param item_id number
---@return boolean
function Bot:HasAugmentEquippedByID(item_id) end

---@param item_id number #
function Bot:HasBotItem(item_id) end

---@param spell_id number #
function Bot:HasBotSpellEntry(spell_id) end

---@param item_id number #
function Bot:HasItemEquippedByID(item_id) end

---@return boolean #
function Bot:IsGrouped() end

---@return boolean #
function Bot:Sitting() end

---@param message string #
function Bot:OwnerMessage(message) end

---@return boolean
function Bot:ReloadBotDataBuckets() end

---@return boolean
function Bot:ReloadBotOwnerDataBuckets(message) end

---@return boolean
function Bot:ReloadBotSpells(message) end

---@return boolean
function Bot:ReloadBotSpellSettings(message) end

---@param item_id number #
function Bot:RemoveBotItem(item_id) end

---@param target_id number #
---@param spell_id number #
function Bot:SendSpellAnim(target_id, spell_id) end

---@param expansion_bitmask number #
---@param save? boolean #
function Bot:SetExpansionBitmask(expansion_bitmask, save) end

---@param spell_id number #
---@param duration? number #
---@param allow_pets? boolean #
---@param allow_bots? boolean #
function Bot:SetSpellDuration(spell_id, duration, allow_pets, allow_bots) end

---@param spell_id number #
---@param duration? number #
---@param allow_pets? boolean #
---@param allow_bots? boolean #
function Bot:SetSpellDurationGroup(spell_id, duration, allow_pets, allow_bots) end

---@param payload_id number #
---@param payload_value? string #
function Bot:SendPayload(payload_id, payload_value) end

---@param signal_id number #
function Bot:Signal(signal_id) end

function Bot:Sit() end

function Bot:Stand() end
