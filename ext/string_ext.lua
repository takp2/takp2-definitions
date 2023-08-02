---@meta

---@return string
function string:case_insensitive_pattern() end

---Incasitive match pattern
---@param pattern string
---@return string
function string:gmatchi(pattern) end

---Search for pattern, replace it with replace up to n times
---@param pattern string
---@param replace string
---@param n number
---@return string
function string:gsubi(pattern, replace, n) end

---Incasitive match pattern
---@param pattern string
---@param init number
---@return string
function string:matchi(pattern, init) end