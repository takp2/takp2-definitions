---@meta

---TODO: definition for Object
---@class Object
---@field null boolean # returns true when an object does not exist
---@field valid boolean # returns false when an object is invalid
Object = {}

function Object:ClearUser() end

function Object:Close() end

---@param reset_state? boolean #
function Object:Delete(reset_state) end

---@param index number #
function Object:DeleteItem(index) end

function Object:Depop() end

---@param name string #
function Object:EntityVariableExists(name) end

function Object:GetDBID() end

---@param name string #
function Object:GetEntityVariable(name) end

function Object:GetHeading() end

function Object:GetID() end

function Object:GetIcon() end

function Object:GetItemID() end

function Object:GetModelName() end

function Object:GetType() end

function Object:GetX() end

function Object:GetY() end

function Object:GetZ() end

function Object:IsGroundSpawn() end

function Object:Repop() end

function Object:Save() end

---@param name string #
---@param value string #
function Object:SetEntityVariable(name, value) end

---@param h number #
function Object:SetHeading(h) end

---@param user number #
function Object:SetID(user) end

---@param icon number #
function Object:SetIcon(icon) end

---@param item_id number #
function Object:SetItemID(item_id) end

---@param x number #
---@param y number #
---@param z number #
function Object:SetLocation(x, y, z) end

---@param name string #
function Object:SetModelName(name) end

---@param type number #
function Object:SetType(type) end

---@param x number #
function Object:SetX(x) end

---@param y number #
function Object:SetY(y) end

---@param z number #
function Object:SetZ(z) end

function Object:StartDecay() end

function Object:VarSave() end
