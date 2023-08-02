---@meta

---TODO: definition for ItemInst
---@class ItemInst
---@field null boolean # returns true when an item instance does not exist
---@field valid boolean # returns false when an item instance is invalid
ItemInst = {}

---@param exp number #
function ItemInst:AddExp(exp) end

function ItemInst:ClearTimers() end

function ItemInst:Clone() end

---@param item_id number #
function ItemInst:ContainsAugmentByID(item_id) end

---@param item_id number #
function ItemInst:CountAugmentByID(item_id) end

---@param identifier string #
function ItemInst:DeleteCustomData(identifier) end

---@param slot number #
function ItemInst:GetAugment(slot) end

---@param slot number #
function ItemInst:GetAugmentItemID(slot) end

function ItemInst:GetAugmentType() end

function ItemInst:GetCharges() end

function ItemInst:GetColor() end

---@param identifier number #
function ItemInst:GetCustomData(identifier) end

function ItemInst:GetCustomDataString() end

function ItemInst:GetExp() end

function ItemInst:GetID() end

---@param slot number #
---@return Item
function ItemInst:GetItem(slot) end

---@return Item
function ItemInst:GetItem() end

---@param slot number #
function ItemInst:GetItemID(slot) end

function ItemInst:GetItemScriptID() end

---@param current_level number #
function ItemInst:GetKillsNeeded(current_level) end

function ItemInst:GetMaxEvolveLvl() end

function ItemInst:GetPrice() end

function ItemInst:GetTaskDeliveredCount() end

function ItemInst:GetTotalItemCount() end

---@param slot number #
function ItemInst:GetUnscaledItem(slot) end

function ItemInst:IsAmmo() end

function ItemInst:IsAugmentable() end

function ItemInst:IsAugmented() end

---@param slot_id number #
function ItemInst:IsEquipable(slot_id) end

---@param race number #
---@param class_ number #
function ItemInst:IsEquipable(race, class_) end

function ItemInst:IsExpendable() end

function ItemInst:IsInstNoDrop() end

function ItemInst:IsStackable() end

---@param item_class number #
function ItemInst:IsType(item_class) end

function ItemInst:IsWeapon() end

function ItemInst:RemoveTaskDeliveredItems() end

---@param charges number #
function ItemInst:SetCharges(charges) end

---@param color number #
function ItemInst:SetColor(color) end

---@param identifier string #
---@param value boolean #
function ItemInst:SetCustomData(identifier, value) end

---@param identifier string #
---@param value number #
function ItemInst:SetCustomData(identifier, value) end

---@param identifier string #
---@param value number #
function ItemInst:SetCustomData(identifier, value) end

---@param identifier string #
---@param value string #
function ItemInst:SetCustomData(identifier, value) end

---@param exp number #
function ItemInst:SetExp(exp) end

---@param flag boolean #
function ItemInst:SetInstNoDrop(flag) end

---@param price number #
function ItemInst:SetPrice(price) end

---@param scale_factor number #
function ItemInst:SetScale(scale_factor) end

---@param v boolean #
function ItemInst:SetScaling(v) end

---@param name string #
---@param time number #
function ItemInst:SetTimer(name, time) end

---@param name string #
function ItemInst:StopTimer(name) end

