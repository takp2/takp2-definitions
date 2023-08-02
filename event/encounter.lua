---@meta

---@class EncounterEventEncounterLoad
---@field self Encounter #
---@field encounter string #
---@field data string #
---@field name string # encounter name

--- event_encounter_load is a Encounter event when encounterload occurs.
---@param e EncounterEventEncounterLoad
function event_encounter_load(e) end

---@class EncounterEventEncounterUnload
---@field self Encounter #
---@field data string #
---@field name string # encounter name

--- event_encounter_unload is a Encounter event when encounterunload occurs.
---@param e EncounterEventEncounterUnload
function event_encounter_unload(e) end

---@class EncounterEventTimer
---@field self Encounter #
---@field timer string #
---@field name string # encounter name

--- event_timer is a Encounter event when timer occurs.
---@param e EncounterEventTimer
function event_timer(e) end