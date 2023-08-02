---@meta

---TODO: definition for Inventory
---@class Inventory
Inventory = {}

---@param slot_id number #
function Inventory:CalcBagIdx(slot_id) end

---@param equipslot number #
function Inventory:CalcMaterialFromSlot(equipslot) end

---@param material number #
function Inventory:CalcSlotFromMaterial(material) end

---@param slot_id number #
---@param bag_slot? number #
function Inventory:CalcSlotId(slot_id, bag_slot) end

---@param item Item #
---@param container Item #
function Inventory:CanItemFitInContainer(item, container) end

---@param slot_id number #
function Inventory:CheckNoDrop(slot_id) end

---@param item_id number #
function Inventory:CountAugmentEquippedByID(item_id) end

---@param item_id number #
function Inventory:CountItemEquippedByID(item_id) end

---@param slot_id number #
---@param quantity? number #
function Inventory:DeleteItem(slot_id, quantity) end

---@param for_bag boolean #
---@param try_cursor boolean #
---@param min_size? number #
---@param is_arrow? boolean #
function Inventory:FindFreeSlot(for_bag, try_cursor, min_size, is_arrow) end

---@param slot_id number #
---@param bag_slot? number #
function Inventory:GetItem(slot_id, bag_slot) end

---@param inst ItemInst #
function Inventory:GetSlotByItemInst(inst) end

---@param item_id number #
function Inventory:HasAugmentEquippedByID(item_id) end

---@param item_id number #
---@param quantity? number #
---@param where? number #
function Inventory:HasItem(item_id, quantity, where) end

---@param loregroup LoreGroup #
---@param where? number #
function Inventory:HasItemByLoreGroup(loregroup, where) end

---@param use number #
---@param quantity? number #
---@param where? number #
function Inventory:HasItemByUse(use, quantity, where) end

---@param item_id number #
function Inventory:HasItemEquippedByID(item_id) end

---@param item Item #
---@param quantity number #
function Inventory:HasSpaceForItem(item, quantity) end

---@param slot_id number #
function Inventory:PopItem(slot_id) end

---@param item ItemInst #
function Inventory:PushCursor(item) end

---@param slot_id number #
---@param item ItemInst #
function Inventory:PutItem(slot_id, item) end

---@param slot_id number #
function Inventory:SupportsContainers(slot_id) end

---@param source_slot number #
---@param destination_slot number #
function Inventory:SwapItem(source_slot, destination_slot) end
