---@meta

---TODO: definition for NPC
---@class NPC : Mob
---@field null boolean # returns true when a npc does not exist
---@field valid boolean # returns false when a npc is invalid
NPC = {}

---@param dist? number #
---@param max_x number #
---@param min_x number #
---@param max_y number #
---@param min_y number #
---@param delay? number #
---@param mindelay? number #
function NPC:AI_SetRoambox(dist, max_x, min_x, max_y, min_y, delay, mindelay) end

---@param priority number #
---@param spell_id number #
---@param type number #
---@param mana_cost number #
---@param recast_delay number #
---@param resist_adjust number #
---@param min_hp? number #
---@param max_hp? number #
function NPC:AddAISpell(priority, spell_id, type, mana_cost, recast_delay, resist_adjust, min_hp, max_hp) end

---@param spell_effect_id number #
---@param base_value number #
---@param limit_value number #
---@param max_value number #
function NPC:AddAISpellEffect(spell_effect_id, base_value, limit_value, max_value) end

---@param copper number #
---@param silver number #
---@param gold number #
---@param platinum number #
function NPC:AddCash(copper, silver, gold, platinum) end

---@param item_id number #
---@param charges number #
---@param equip? boolean #
---@param aug1? number #
---@param aug2? number #
---@param aug3? number #
---@param aug4? number #
---@param aug5? number #
---@param aug6? number #
function NPC:AddItem(item_id, charges, equip, aug1, aug2, aug3, aug4, aug5, aug6) end

---@param id? number #
function NPC:AddLootTable(id) end

---@param grid number #
function NPC:AssignWaypoints(grid) end

function NPC:CalculateNewWaypoint() end

---@param last_name string #
function NPC:ChangeLastName(last_name) end

-- Check the ground around the NPC for a dropped item and destroy it. Returns true if object found, defined in lua_modules
---@param range number # Range to check around the NPC
---@return boolean # Returns true if object found
function NPC:CheckGround(range) end

---@param faction number #
function NPC:CheckNPCFactionAlly(faction) end


function NPC:ClearItemList() end

function NPC:ClearLastName() end

---@param item_id number #
function NPC:CountItem(item_id) end

--- Returns the number of entries in the loot list
function NPC:CountLoot() end

--- Returns list of mobs in range of NPC, defined in lua_modules
---@param angle_start number # Angle to start search
---@param angle_end number # Angle to end search
---@param aoe_range number # Range to search
---@param min_range number # Minimum range to search
---@param m_list table # List of mobs to search
function NPC:DirectionalAreaEffectList(angle_start, angle_end, aoe_range, min_range, m_list) end
     

---@param client Client # Client to display waypoint info to
function NPC:DisplayWaypointInfo(client) end

---@param target Mob # Target to attack
function NPC:DoClassAttacks(target) end


--- Calls func for each hate list entry that matches cond, defined in lua_modules
---@param function_iterator function # Function to run iteration against
---@param function_condition function # Function to determine conditionCondition to match
function NPC:ForeachHateList(function_iterator, function_condition) end

--- Returns accuracy rating of NPC
---@return number # Accuracy rating
function NPC:GetAccuracyRating() end

function NPC:GetAttackDelay() end

function NPC:GetAttackSpeed() end

function NPC:GetAvoidanceRating() end

function NPC:GetCopper() end

---@param item_id number #
function NPC:GetFirstSlotByItemID(item_id) end

function NPC:GetFollowCanRun() end

function NPC:GetFollowDistance() end

function NPC:GetFollowID() end

function NPC:GetGold() end

function NPC:GetGrid() end

function NPC:GetGuardPointX() end

function NPC:GetGuardPointY() end

function NPC:GetGuardPointZ() end

function NPC:GetHealScale() end

---@param loot_slot number #
function NPC:GetItemIDBySlot(loot_slot) end

---@return NPCLootList
function NPC:GetLootList() return {} end

function NPC:GetLoottableID() end

function NPC:GetMaxDMG() end

---@param level number #
function NPC:GetMaxDamage(level) end

function NPC:GetMaxWp() end

function NPC:GetMinDMG() end

function NPC:GetNPCFactionID() end

---@param ent Mob #
function NPC:GetNPCHate(ent) end

function NPC:GetNPCSpellsID() end

---@param stat string #
function NPC:GetNPCStat(stat) end

function NPC:GetPetSpellID() end

function NPC:GetPlatinum() end

function NPC:GetPrimSkill() end

---@return number
function NPC:GetPrimaryFaction() end

function NPC:GetRawAC() end

function NPC:GetScore() end

function NPC:GetSecSkill() end

function NPC:GetSilver() end

function NPC:GetSlowMitigation() end

function NPC:GetSp2() end

function NPC:GetSpawnKillCount() end

function NPC:GetSpawnPointH() end

function NPC:GetSpawnPointID() end

function NPC:GetSpawnPointX() end

function NPC:GetSpawnPointY() end

function NPC:GetSpawnPointZ() end

function NPC:GetSpellFocusDMG() end

function NPC:GetSpellFocusHeal() end

function NPC:GetSpellScale() end

---@return number
function NPC:GetSwarmOwner() return 0 end

function NPC:GetSwarmTarget() end

function NPC:GetWaypointMax() end

---@param spell_effect_id number #
function NPC:HasAISpellEffect(spell_effect_id) end

---@param item_id number #
function NPC:HasItem(item_id) end

function NPC:IsAnimal() end

function NPC:IsGuarding() end

---@param ent Mob #
function NPC:IsOnHatelist(ent) end

function NPC:IsRaidTarget() end

function NPC:IsRareSpawn() end

function NPC:IsTaunting() end

function NPC:MerchantCloseShop() end

function NPC:MerchantOpenShop() end

---@param stat string #
---@param value string #
function NPC:ModifyNPCStat(stat, value) end

---@param x number #
---@param y number #
---@param z number #
---@param h? number #
---@param save? boolean #
function NPC:MoveTo(x, y, z, h, save) end

function NPC:NextGuardPosition() end

---@param pause_time number #
function NPC:PauseWandering(pause_time) end

---@param thief Client #
function NPC:PickPocket(thief) end

function NPC:RecalculateSkills() end

function NPC:ReloadSpells() end

---@param spell_id number #
function NPC:RemoveAISpell(spell_id) end

---@param spell_effect_id number #
function NPC:RemoveAISpellEffect(spell_effect_id) end

function NPC:RemoveCash() end

---@param item_id number #
---@param quantity? number #
---@param slot? number #
function NPC:RemoveItem(item_id, quantity, slot) end

function NPC:ResumeWandering() end

---@param x? number #
---@param y? number #
---@param z? number #
---@param heading? number #
---@overload fun(clear:boolean)
function NPC:SaveGuardSpot(x, y, z, heading) end

---@param npc_level number #
function NPC:ScaleNPC(npc_level) end

---@param amt number #
function NPC:SetCopper(amt) end

---@param v boolean #
function NPC:SetFollowCanRun(v) end

---@param dist number #
function NPC:SetFollowDistance(dist) end

---@param id number #
function NPC:SetFollowID(id) end

---@param amt number #
function NPC:SetGold(amt) end

---@param grid number #
function NPC:SetGrid(grid) end

---@param id number #
function NPC:SetNPCFactionID(id) end

---@param id number #
function NPC:SetPetSpellID(id) end

---@param amt number #
function NPC:SetPlatinum(amt) end

---@param skill_id number #
function NPC:SetPrimSkill(skill_id) end

---@param wp number #
function NPC:SetSaveWaypoint(wp) end

---@param skill_id number #
function NPC:SetSecSkill(skill_id) end

---@param amt number #
function NPC:SetSilver(amt) end

---@param box_size number #
---@param move_distance? number #
---@param move_delay? number #
function NPC:SetSimpleRoamBox(box_size, move_distance, move_delay) end

---@param sg2 number #
function NPC:SetSp2(sg2) end

---@param focus number #
function NPC:SetSpellFocusDMG(focus) end

---@param focus number #
function NPC:SetSpellFocusHeal(focus) end

---@param target number #
function NPC:SetSwarmTarget(target) end

---@param t boolean #
function NPC:SetTaunting(t) end

function NPC:SetWaypointPause() end

---@param signal_id number #
function NPC:Signal(signal_id) end

---@param duration number #
function NPC:StartSwarmTimer(duration) end

function NPC:StopWandering() end

---@param wp number #
function NPC:UpdateWaypoint(wp) end



