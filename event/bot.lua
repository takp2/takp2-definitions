---@meta


---@class BotEventAggroSay
---@field self Bot # Bot triggering the event

--- event_aggro_say is a Bot event when aggrosay occurs.
---@param e BotEventAggroSay
function event_aggro_say(e) end

---@class BotEventCast
---@field self Bot # Bot that triggered the event
---@field spell Spell|nil # Spell instance that was used
---@field caster_id number #
---@field caster_level number #

--- event_cast is a Bot event when cast occurs.
---@param e BotEventCast
function event_cast(e) end

---@class BotEventCastBegin
---@field self Bot # Bot that triggered the event
---@field spell Spell|nil # Spell instance that was used
---@field caster_id number #
---@field caster_level number #

--- event_cast_begin is a Bot event when castbegin occurs.
---@param e BotEventCastBegin
function event_cast_begin(e) end

---@class BotEventCastOn
---@field self Bot # Bot that triggered the event
---@field spell Spell|nil # Spell instance that was used
---@field caster_id number #
---@field caster_level number #

--- event_cast_on is a Bot event when caston occurs.
---@param e BotEventCastOn
function event_cast_on(e) end

---@class BotEventCombat
---@field self Bot # Bot that triggered the event
---@field other Client # Client that triggered the event
---@field joined boolean # Is this a joining or leaving hate list event?

--- event_combat is a Bot event when combat occurs.
---@param e BotEventCombat
function event_combat(e) end

---@class BotEventDeath
---@field self Bot # Bot that triggered the event
---@field other Client # Client that triggered the event
---@field damage number # Final damage amount that was killing blow
---@field spell Spell|nil # Spell instance that was used
---@field skill string #

--- event_death is a Bot event when death occurs.
---@param e BotEventDeath
function event_death(e) end

---@class BotEventDeathComplete
---@field self Bot # Bot that triggered the event
---@field other Client # Client that triggered the event
---@field damage number # Final damage amount that was killing blow
---@field spell Spell|nil # Spell instance that was used
---@field skill string #

--- event_death_complete is a Bot event when deathcomplete occurs.
---@param e BotEventDeathComplete
function event_death_complete(e) end

---@class BotEventPopupResponse
---@field self Bot # Bot that triggered the event
---@field other Client # Client that triggered the event
---@field popup_id number #

--- event_popup_response is a Bot event when popupresponse occurs.
---@param e BotEventPopupResponse
function event_popup_response(e) end

---@class BotEventSay
---@field self Bot # Bot that triggered the event
---@field other Client # Client that triggered the event
---@field message string # Message client said to npc
---@field language Languages # Language client said message in

--- event_say is a Bot event when say occurs.
---@param e BotEventSay
function event_say(e) end

---@class BotEventSignal
---@field self Bot # Bot that triggered the event
---@field signal string #

--- event_signal is a Bot event when signal occurs.
---@param e BotEventSignal
function event_signal(e) end

---@class BotEventSlay
---@field self Bot # Bot that triggered the event
---@field other Client # Client that triggered the event

--- event_slay is a Bot event when slay occurs.
---@param e BotEventSlay
function event_slay(e) end

---@class BotEventSpawn
---@field self Bot # Bot that triggered the event

--- event_spawn is a Bot event when spawn occurs.
---@param e BotEventSpawn
function event_spawn(e) end

---@class BotEventTargetChange
---@field self Bot # Bot that triggered the event
---@field other Client # Client that triggered the event

--- event_target_change is a Bot event when targetchange occurs.
---@param e BotEventTargetChange
function event_target_change(e) end

---@class BotEventTimer
---@field self Bot # Bot that triggered the event
---@field timer string #

--- event_timer is a Bot event when timer occurs.
---@param e BotEventTimer
function event_timer(e) end

---@class BotEventUseSkill
---@field self Bot # Bot that triggered the event

--- event_use_skill is a Bot event when useskill occurs.
---@param e BotEventUseSkill
function event_use_skill(e) end