---@meta

---TODO: definition for Packet
---@class PacketType
---@field null boolean # returns true when an object does not exist
---@field valid boolean # returns false when an object is invalid
PacketType = {}

---@param opcode number # initial opcode to construct packet with
---@param size number # size of packet, this MUST entail total size
---@param raw? boolean # is packet raw?
---@return PacketType
function Packet(opcode, size, raw) end

---@returns number
function PacketType:GetOpcode() end

---@returns number
function PacketType:GetRawOpcode() end

---@returns number
function PacketType:GetSize() end

---@returns number
function PacketType:GetWritePosition() end

---@param offset number #
---@returns number
function PacketType:ReadDouble(offset) end

---@param offset number #
---@param string_length number #
---@returns string
function PacketType:ReadFixedLengthString(offset, string_length) end

---@param offset number #
---@returns number
function PacketType:ReadFloat(offset) end

---@param offset number #
---@returns number
function PacketType:ReadInt16(offset) end

---@param offset number #
---@returns number
function PacketType:ReadInt32(offset) end

---@param offset number #
---@returns number
function PacketType:ReadInt64(offset) end

---@param offset number #
---@returns number
function PacketType:ReadInt8(offset) end

---@param offset number #
---@returns string
function PacketType:ReadString(offset) end

---@param op number #
function PacketType:SetOpcode(op) end

---@param op number #
function PacketType:SetRawOpcode(op) end

---@param offset number #
function PacketType:SetWritePosition(offset) end

---@param offset? number #
---@param value? number #
function PacketType:WriteDouble(offset, value) end

---@param offset number #
---@param value? string #
---@param string_length? number #
function PacketType:WriteFixedLengthString(offset, value, string_length) end

---@param offset number #
---@param value? number #
function PacketType:WriteFloat(offset, value) end

---@param offset number #
---@param value? number #
function PacketType:WriteInt16(offset, value) end

---@param offset number #
---@param value? number #
function PacketType:WriteInt32(offset, value) end

---@param offset number #
---@param value? number #
function PacketType:WriteInt64(offset, value) end

---@param offset number #
---@param value? number #
function PacketType:WriteInt8(offset, value) end

---@param offset number #
---@param value? string #
function PacketType:WriteString(offset, value) end
