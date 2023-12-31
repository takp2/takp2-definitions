---@meta

---TODO: definition for Door
---@class Door
---@field null boolean # returns true when a door does not exist
---@field valid boolean # returns false when a door is invalid
Door = {}

function Door:CreateDatabaseEntry() end

---@param sender Mob #
---@param alt_mode boolean #
function Door:ForceClose(sender, alt_mode) end

---@param sender Mob #
function Door:ForceClose(sender) end

---@param sender? Mob #
---@param alt_mode? boolean #
function Door:ForceOpen(sender, alt_mode) end

---@param sender Mob #
function Door:ForceOpen(sender) end

---@return boolean
function Door:GetDisableTimer() end

---@return number
function Door:GetDoorDBID() end

---@return number
function Door:GetDoorID() end

---@return string
function Door:GetDoorName() end

---@return number
function Door:GetHeading() end

---@return number
function Door:GetIncline() end

---@return number
function Door:GetKeyItem() end

---@return number
function Door:GetLockPick() end

---@return number
function Door:GetNoKeyring() end

---@return number
function Door:GetOpenType() end

---@return number
function Door:GetSize() end

---@return number
function Door:GetX() end

---@return number
function Door:GetY() end

---@return number
function Door:GetZ() end

---@param flag boolean #
function Door:SetDisableTimer(flag) end

---@param name string #
function Door:SetDoorName(name) end

---@param h number #
function Door:SetHeading(h) end

---@param incline number #
function Door:SetIncline(incline) end

---@param key number #
function Door:SetKeyItem(key) end

---@param x number #
---@param y number #
---@param z number #
function Door:SetLocation(x, y, z) end

---@param pick number #
function Door:SetLockPick(pick) end

---@param type number #
function Door:SetNoKeyring(type) end

---@param type number #
function Door:SetOpenType(type) end

---@param sz number #
function Door:SetSize(sz) end

---@param x number #
function Door:SetX(x) end

---@param y number #
function Door:SetY(y) end

---@param z number #
function Door:SetZ(z) end
