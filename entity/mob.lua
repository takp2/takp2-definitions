---@meta

---
---@class Mob : Entity
---@field null boolean # returns true when a entity does not exist
---@field valid boolean # returns false when a entity is invalid
Mob = {}

---@param effect_id number # 
function Mob:AddNimbusEffect(effect_id) end

---@param other Mob # Mob to add to hate list
---@param hate? number # Hate to add to mob
---@param damage? number #  Damage to add to mob
---@param yell_for_help? boolean #  Yell for help
---@param frenzy? boolean # Frenzy
---@param buff_tic? boolean #  Buff tic
function Mob:AddToHateList(other, hate, damage, yell_for_help, frenzy, buff_tic) end

---@param spell_id number # Spell to add to mob
---@param duration? number # Duration of spell
function Mob:ApplySpellBuff(spell_id, duration) end

--- Returns a list of all mobs in the area of effect
---@param aoe_range number # Range of Area of Effect
---@param min_range number # Minimum range of Area of Effect
---@param m_list? Mob[] # List of mobs to check
function Mob:DirectionalAreaEffectList(angle_start, angle_end, aoe_range, min_range, m_list) end

---@param other Mob # 
---@param hand? number # 
---@param from_riposte? number # 
---@param is_strikethrough? number # 
---@param is_from_spell? number # 
---@param opts? Object # 
---@return boolean # true if the attack succeeds
function Mob:Attack(other, hand, from_riposte, is_strikethrough, is_from_spell, opts) end

---@param Hand number # 
---@param weapon ItemInst # 
---@return number # skill id based on weapon/hand
function Mob:AttackAnimation(Hand, weapon) end

---@param other? Mob # 
---@param x? number # 
---@param y? number # 
---@return boolean # true if behind mob
function Mob:BehindMob(other, x, y) end

---@return number # count of buffs on mob
function Mob:BuffCount() end

function Mob:BuffFadeAll() end

---@param effect_id number # 
---@param skipslot? number # 
function Mob:BuffFadeByEffect(effect_id, skipslot) end

---@param slot number # 
---@param recalc_bonuses? boolean # 
function Mob:BuffFadeBySlot(slot, recalc_bonuses) end

---@param spell_id number # 
function Mob:BuffFadeBySpellID(spell_id) end

---@param x number # 
---@param y number # 
---@param z number # 
---@return number # distance as a float to x/y/z
function Mob:CalculateDistance(x, y, z) end

---@param in_x number # 
---@param in_y number # 
---@return number # distance as a double
function Mob:CalculateHeadingToTarget(in_x, in_y) end

---@param duration number # 
---@param intensity number # 
---@param c? Client # 
---@param global? boolean # 
function Mob:CameraEffect(duration, intensity, c, global) end

---@param spell_id number # 
---@param caster_level number # 
---@param fail_if_overwrite? boolean # 
---@return number # -1 on stack failure, -2 if all slots full, the slot number if the buff should overwrite another buff, or a free buff slot
function Mob:CanBuffStack(spell_id, caster_level, fail_if_overwrite) end

---@param item_id number # 
---@return number # true when a mob's class can equip item
function Mob:CanClassEquipItem(item_id) end

---@param item_id number # 
---@return number # true when a mob's race can equip item
function Mob:CanRaceEquipItem(item_id) end

---@return number # true when a mob's class can block
function Mob:CanThisClassBlock() end

---@return number # true when a mob's class can block
function Mob:CanThisClassDodge() end

---@return number # true when a mob's class can double attack
function Mob:CanThisClassDoubleAttack() end

---@return number # true when a mob's class can dual wield
function Mob:CanThisClassDualWield() end

---@return number # true when a mob's class can parry
function Mob:CanThisClassParry() end

---@return number # true when a mob's class can riposte
function Mob:CanThisClassRiposte() end

---@param spell_id number # 
---@param target_id number # 
---@param slot? number # 
---@param cast_time? number # 
---@param mana_cost? number # 
---@param item_slot? number # 
---@param timer? number # 
---@return boolean # true when a spell cast starts successfully
function Mob:CastSpell(spell_id, target_id, slot, cast_time, mana_cost, item_slot, timer) end

---@param value number # 
function Mob:ChangeBeard(value) end

---@param value number # 
function Mob:ChangeBeardColor(value) end

---@param value number # 
function Mob:ChangeDrakkinDetails(value) end

---@param value number # 
function Mob:ChangeDrakkinHeritage(value) end

---@param value number # 
function Mob:ChangeDrakkinTattoo(value) end

---@param value number # 
function Mob:ChangeEyeColor1(value) end

---@param value number # 
function Mob:ChangeEyeColor2(value) end

---@param value number # 
function Mob:ChangeGender(value) end

---@param value number # 
function Mob:ChangeHairColor(value) end

---@param value number # 
function Mob:ChangeHairStyle(value) end

---@param value number # 
function Mob:ChangeHelmTexture(value) end

---@param value number # 
function Mob:ChangeLuclinFace(value) end

---@param value number # 
function Mob:ChangeRace(value) end

---@param in_size number # 
---@param no_restriction? boolean # 
function Mob:ChangeSize(in_size, no_restriction) end

---@param value number # 
function Mob:ChangeTexture(value) end

---@return boolean # true when a mob is charmed
function Mob:Charmed() end

---@param other Mob # 
---@return boolean # true when a mob is aggro'd
function Mob:CheckAggro(other) end

---@param spell_id number # 
---@param is_proc? boolean # 
---@return number # amount of aggro of a spell
function Mob:CheckAggroAmount(spell_id, is_proc) end

---@param spell_id number # 
---@param heal_possible? number # 
---@return number # amount of aggro of a spell
function Mob:CheckHealAggroAmount(spell_id, heal_possible) end

---@param other Mob # 
---@return boolean # true if other is Line of Sight
function Mob:CheckLoS(other) end

---@param x number # 
---@param y number # 
---@param z number # 
---@param mob_size? number # 
---@return boolean # true if x y z  is Line of Sight
function Mob:CheckLoSToLoc(x, y, z, mob_size) end

---@param type number # 
---@param buff_slot number # 
---@param spell_id number # 
---@return number # number of hits remaining on a spell buff
function Mob:CheckNumHitsRemaining(type, buff_slot, spell_id) end

function Mob:ClearSpecialAbilities() end

---@param other Mob # 
function Mob:CloneAppearance(other) end

---@param other Mob # 
---@param clone_name boolean # 
function Mob:CloneAppearance(other, clone_name) end

---@param other Mob # 
---@return boolean # true when in combat range (can auto attack)
function Mob:CombatRange(other) end

---@param from Mob # 
---@param damage number # 
---@param spell_id number # 
---@param attack_skill number # 
---@param avoidable? boolean # 
---@param buffslot? number # 
---@param buff_tic? boolean # 
function Mob:Damage(from, damage, spell_id, attack_skill, avoidable, buffslot, buff_tic) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageArea(damage, distance) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageAreaBots(damage, distance) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageAreaBotsPercentage(damage, distance) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageAreaClients(damage, distance) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageAreaClientsPercentage(damage, distance) end

---@param damage number # 
---@param distance number # 
function Mob:DamageAreaNPCs(damage, distance) end

---@param damage number # 
function Mob:DamageAreaNPCs(damage) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageAreaNPCsPercentage(damage, distance) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageAreaPercentage(damage, distance) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageHateList(damage, distance) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageHateListBotsPercentage(damage, distance) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageHateListClients(damage, distance) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageHateListClientsPercentage(damage, distance) end

---@param damage number # 
---@param distance number # 
function Mob:DamageHateListNPCs(damage, distance) end

---@param damage number # 
function Mob:DamageHateListNPCs(damage) end

---@param damage number # 
function Mob:DamageHateListNPCsPercentage(damage) end

---@param damage number # 
---@param distance? number # 
function Mob:DamageHateListNPCsPercentage(damage, distance) end

---@param name string # name of global variable
function Mob:DelGlobal(name) end

---@param bucket_name string # 
function Mob:DeleteBucket(bucket_name) end

---@param variable_name string # 
---@return boolean # true when a delete occurs
function Mob:DeleteEntityVariable(variable_name) end

---@param start_spawn_timer? boolean # 
function Mob:Depop(start_spawn_timer) end

---@return boolean # true when mob has divine aura active
function Mob:DivineAura() end

---@param anim_num number # 
---@param type? number # 
---@param ackreq? boolean # 
---@param filter? number # 
function Mob:DoAnim(anim_num, type, ackreq, filter) end

---@param other Mob # 
---@param range_weapon? ItemInst # 
---@param ammo? ItemInst # 
---@param weapon_damage? number # 
---@param chance_mod? number # 
function Mob:DoArcheryAttackDmg(other, range_weapon, ammo, weapon_damage, chance_mod) end

---@param caster Mob # 
---@param push_back number # 
---@param push_up number # 
function Mob:DoKnockback(caster, push_back, push_up) end

---@param other Mob # 
---@param weapon_damage number # 
---@param skill number # 
---@param chance_mod? number # 
---@param focus? number # 
---@param can_riposte? boolean # 
function Mob:DoMeleeSkillAttackDmg(other, weapon_damage, skill, chance_mod, focus, can_riposte) end

---@param other Mob # 
---@param weapon_damage number # 
---@param skill number # 
---@param chance_mod number # 
---@param focus number # 
function Mob:DoMeleeSkillAttackDmg(other, weapon_damage, skill, chance_mod, focus) end

---@param other Mob # 
---@param skill number # 
---@param max_damage number # 
---@param min_damage number # 
---@param hate_override? number # 
---@param reuse_time? number # 
function Mob:DoSpecialAttackDamage(other, skill, max_damage, min_damage, hate_override, reuse_time) end

---@param other Mob # 
---@param range_weapon? ItemInst # 
---@param item? Item # 
---@param weapon_damage? number # 
---@param chance_mod? number # 
function Mob:DoThrowingAttackDmg(other, range_weapon, item, weapon_damage, chance_mod) end

---@param other Mob # 
function Mob:DoubleAggro(other) end --- Doubles mob's aggro on other

---@param message string # 
function Mob:Emote(message) end

---@param name string # 
---@return boolean # true when an entity variable of name exists
function Mob:EntityVariableExists(name) end

---@param target Mob # 
function Mob:FaceTarget(target) end

---@param spell_id number # 
---@return boolean # true when buff of spell_id is found on mob
function Mob:FindBuff(spell_id) end

---@param slot number # 
---@return number # spell_id of buff on slot if any
function Mob:FindBuffBySlot(slot) end

---@param x number # 
---@param y number # 
---@return number # z position of ground
function Mob:FindGroundZ(x, y) end

---@param x number # 
---@param y number # 
---@param z number # 
function Mob:FindGroundZ(x, y, z) end

---@param type number # 
---@param offensive? number # 
---@param threshold? number # 
---@return boolean # true if the type is found
function Mob:FindType(type, offensive, threshold) end

---@param x number # 
---@param y number # 
---@param z number # 
---@param heading? number # 
---@param send_update? boolean #
---@param set_guard? boolean # 
function Mob:GMMove(x, y, z, heading, send_update, set_guard) end

function Mob:Gate() end

---@param id number # 
---@return number
function Mob:GetAA(id) end

---@return StatBonuses
function Mob:GetAABonuses() end

---@param id number # 
---@return number
function Mob:GetAAByAAID(id) end

---@return number
function Mob:GetAC() end

---@return number
function Mob:GetAGI() end

---@return number
function Mob:GetATK() end

---@return number
function Mob:GetAggroRange() end

---@return boolean
function Mob:GetAllowBeneficial() end

---@return number
function Mob:GetAppearance() end

---@return number
function Mob:GetAssistRange() end

---@return number
function Mob:GetBaseGender() end

---@return number
function Mob:GetBaseRace() end

---@return number
function Mob:GetBaseSize() end

---@return number
function Mob:GetBeard() end

---@return number
function Mob:GetBeardColor() end

---@return number
function Mob:GetBodyType() end

---@param bucket_name number # 
---@return string
function Mob:GetBucket(bucket_name) end

---@param bucket_name number # 
---@return string
function Mob:GetBucketExpires(bucket_name) end

---@return string
function Mob:GetBucketKey() end

---@param bucket_name number # 
---@return string
function Mob:GetBucketRemaining(bucket_name) end

---@param slot number # 
---@return number
function Mob:GetBuffSlotFromType(slot) end

---@param slot number # 
---@param identifier string # 
---@return number
function Mob:GetBuffStatValueBySlot(slot, identifier) end

---@param spell_id number # 
---@param identifier string # 
---@return number
function Mob:GetBuffStatValueBySpell(spell_id, identifier) end

---@return number
function Mob:GetCHA() end

---@return number
function Mob:GetCR() end

---@param spell_id number # 
---@return number
function Mob:GetCasterLevel(spell_id) end

---@return number
function Mob:GetClass() end

---@return string
function Mob:GetClassName() end

---@return string
function Mob:GetCleanName() end

---@return number
function Mob:GetCorruption() end

---@return number
function Mob:GetDEX() end

---@return number
function Mob:GetDR() end

---@param target Mob # 
---@return number
function Mob:GetDamageAmount(target) end

---@return number
function Mob:GetDeity() end

---@return number
function Mob:GetDisplayAC() end

---@return number
function Mob:GetDrakkinDetails() end

---@return number
function Mob:GetDrakkinHeritage() end

---@return number
function Mob:GetDrakkinTattoo() end

---@param name string # 
---@return string
function Mob:GetEntityVariable(name) end

---@return string[]
function Mob:GetEntityVariables() end

---@return number
function Mob:GetEyeColor1() end

---@return number
function Mob:GetEyeColor2() end

---@return number
function Mob:GetFR() end

---@param caster Mob # 
---@param spell_id number # 
---@return number
function Mob:GetFcDamageAmtIncoming(caster, spell_id) end

---@return number
function Mob:GetFlurryChance() end

---@return number
function Mob:GetGender() end

---@param name string # name of global variable
---@return string
function Mob:GetGlobal(name) end

---@return number
function Mob:GetHP() end

---@return number
function Mob:GetHPRatio() end

---@return number
function Mob:GetHairColor() end

---@return number
function Mob:GetHairStyle() end

---@return number
function Mob:GetHandToHandDamage() end

---@return number
function Mob:GetHandToHandDelay() end

---@return number
function Mob:GetHaste() end

---@param target Mob # 
---@param is_damage? boolean # 
---@return number
function Mob:GetHateAmount(target, is_damage) end

---@return Mob
function Mob:GetHateClosest() end

---@param other number # 
---@return Mob
function Mob:GetHateDamageTop(other) end

---@return HateList
function Mob:GetHateList() end

---@param distance? number # 
---@return HateList
function Mob:GetHateListBots(distance) end

---@param distance? number # 
---@return HateList
function Mob:GetHateListByDistance(distance) end

---@param distance? number # 
---@return HateList
function Mob:GetHateListClients(distance) end

---@param distance? number # 
---@return HateList
function Mob:GetHateListNPCs(distance) end

---@return Mob
function Mob:GetHateRandom() end

---@return Bot
function Mob:GetHateRandomBot() end

--- Returns a random client from the hate list
---@param max_distance? number #
---@return Client
function Mob:GetHateRandomClient(max_distance) end

---@return NPC
function Mob:GetHateRandomNPC() end

---@return Mob
function Mob:GetHateTop() end

---@return number
function Mob:GetHeading() end

---@return number
function Mob:GetHelmTexture() end

---@param material_slot number # 
function Mob:GetHerosForgeModel(material_slot) end

---@return number
function Mob:GetINT() end

---@return number
function Mob:GetInvisibleLevel() end

---@return number
function Mob:GetInvisibleUndeadLevel() end

---@return boolean
function Mob:GetInvul() end

---@return number
function Mob:GetItemBonuses() end

---@return number
function Mob:GetItemHPBonuses() end

---@param itemid number # 
---@param identifier string # 
---@return number
function Mob:GetItemStat(itemid, identifier) end

---@return string
function Mob:GetLastName() end

---@return number
function Mob:GetLevel() end

---@param my number # 
---@param other? number # 
---@return number
function Mob:GetLevelCon(my, other) end

---@return number
function Mob:GetLuclinFace() end

---@return number
function Mob:GetMR() end

---@return number
function Mob:GetMana() end

---@return number
function Mob:GetManaRatio() end

---@return number
function Mob:GetMaxAGI() end

---@return number
function Mob:GetMaxCHA() end

---@return number
function Mob:GetMaxDEX() end

---@return number
function Mob:GetMaxHP() end

---@return number
function Mob:GetMaxINT() end

---@return number
function Mob:GetMaxMana() end

---@return number
function Mob:GetMaxSTA() end

---@return number
function Mob:GetMaxSTR() end

---@return number
function Mob:GetMaxWIS() end

---@param uskill number # 
---@return number
function Mob:GetMeleeDamageMod_SE(uskill) end

---@param uskill number # 
---@return number
function Mob:GetMeleeMinDamageMod_SE(uskill) end

---@return number
function Mob:GetMeleeMitigation() end

---@param skill number # 
---@return number
function Mob:GetModSkillDmgTaken(skill) end

---@param resist number # 
function Mob:GetModVulnerability(resist) end

---@return number
function Mob:GetNPCTypeID() end

---@return string
function Mob:GetName() end

---@return number
function Mob:GetNimbusEffect1() end

---@return number
function Mob:GetNimbusEffect2() end

---@return number
function Mob:GetNimbusEffect3() end

---@return number
function Mob:GetOrigBodyType() end

---@return Mob
function Mob:GetOwner() end

---@return number
function Mob:GetOwnerID() end

---@return number
function Mob:GetPR() end

---@return Mob
function Mob:GetPet() end

---@return number
function Mob:GetPetOrder() end

---@return number
function Mob:GetPhR() end

---@return number
function Mob:GetRace() end

---@return string
function Mob:GetRaceName() end

---@param type number # 
---@return number
function Mob:GetResist(type) end

---@param other Mob # 
---@return number
function Mob:GetReverseFactionCon(other) end

---@return number
function Mob:GetRunspeed() end

---@return number
function Mob:GetSTA() end

---@return number
function Mob:GetSTR() end

---@return HateList
function Mob:GetShuffledHateList() end

---@return number
function Mob:GetSize() end

---@param skill number # 
function Mob:GetSkill(skill) end

---@param skill number # 
function Mob:GetSkillDmgAmt(skill) end

---@param skill number # 
function Mob:GetSkillDmgTaken(skill) end

---@param ability number # 
function Mob:GetSpecialAbility(ability) end

---@param ability number # 
---@param param number # 
function Mob:GetSpecialAbilityParam(ability, param) end

---@param spell_id number # 
function Mob:GetSpecializeSkillValue(spell_id) end

---@return StatBonuses
function Mob:GetSpellBonuses() end

---@return number
function Mob:GetSpellHPBonuses() end

---@return Mob Mob
function Mob:GetTarget() end

---@return number
function Mob:GetTexture() end

---@return Mob
function Mob:GetUltimateOwner() end

---@return number
function Mob:GetWIS() end

---@return number
function Mob:GetWalkspeed() end

---@return number
function Mob:GetWaypointH() end

---@return number
function Mob:GetWaypointID() end

---@return number
function Mob:GetWaypointPause() end

---@return number
function Mob:GetWaypointX() end

---@return number
function Mob:GetWaypointY() end

---@return number
function Mob:GetWaypointZ() end

---@param against Mob # 
---@param weapon ItemInst # 
---@return number
function Mob:GetWeaponDamage(against, weapon) end

---@param weapon Item # 
---@param offhand boolean # 
---@return number
function Mob:GetWeaponDamageBonus(weapon, offhand) end

---@return number
function Mob:GetX() end

---@return number
function Mob:GetY() end

---@return number
function Mob:GetZ() end

function Mob:GotoBind() end

---@param other Mob # 
function Mob:HalveAggro(other) end

---@param parse string # 
---@return boolean
function Mob:HasNPCSpecialAtk(parse) end

---@return boolean
function Mob:HasOwner() end

---@return boolean
function Mob:HasPet() end

---@return boolean
function Mob:HasProcs() end

---@return boolean
function Mob:HasShieldEquiped() end

---@return boolean
function Mob:HasTwoHandBluntEquiped() end

---@return boolean
function Mob:HasTwoHanderEquipped() end

function Mob:Heal() end

---@param amount number # 
---@param other? Mob # 
function Mob:HealDamage(amount, other) end

---@param spell_id? number # 
function Mob:InterruptSpell(spell_id) end

---@return boolean
function Mob:IsAIControlled() end

---@return boolean
function Mob:IsAmnesiad() end

---@param target Mob # 
---@param isSpellAttack number # 
---@return boolean
function Mob:IsAttackAllowed(target, isSpellAttack) end

---@param target Mob # 
---@return boolean
function Mob:IsBeneficialAllowed(target) end

---@return boolean
function Mob:IsBerserk() end

---@return boolean
function Mob:IsBlind() end

---@return boolean
function Mob:IsCasting() end

---@param material_slot number # 
---@return boolean
function Mob:IsEliteMaterialItem(material_slot) end

---@return boolean
function Mob:IsEngaged() end

---@return boolean
function Mob:IsEnraged() end

---@return boolean
function Mob:IsFeared() end

---@return boolean
function Mob:IsHorse() end

---@param spell_id number # 
---@param caster Mob # 
---@return boolean
function Mob:IsImmuneToSpell(spell_id, caster) end

---@param other? Mob # 
---@return boolean
function Mob:IsInvisible(other) end

---@return boolean
function Mob:IsMeleeDisabled() end

---@return boolean
function Mob:IsMezzed() end

---@return boolean
function Mob:IsMoving() end

---@return boolean
function Mob:IsPet() end

---@return boolean
function Mob:IsRoamer() end

---@return boolean
function Mob:IsRooted() end

---@return boolean
function Mob:IsRunning() end

---@return boolean
function Mob:IsSilenced() end

---@return boolean
function Mob:IsStunned() end

---@return boolean
function Mob:IsTargetable() end

---@return boolean
function Mob:IsTargeted() end

---@return boolean
function Mob:IsWarriorClass() end

function Mob:Kill() end

function Mob:Mesmerize() end

---@param type number # 
---@param message string # 
function Mob:Message(type, message) end

---@param type number # 
---@param string_id number # 
---@param distance number # 
function Mob:Message_StringID(type, string_id, distance) end

---@param skill number # 
---@param value number # 
function Mob:ModSkillDmgTaken(skill, value) end

---@param resist number # 
---@param value number # 
function Mob:ModVulnerability(resist, value) end

---@param parse string # 
---@param perm number # 
---@param reset? boolean # 
---@param remove? boolean # 
function Mob:NPCSpecialAttacks(parse, perm, reset, remove) end

---@param x number # 
---@param y number # 
---@param z number # 
function Mob:NavigateTo(x, y, z) end

---@param str string # 
function Mob:ProcessSpecialAbilities(str) end

---@param to Mob # 
---@param item_id number # 
---@param is_arrow boolean # 
---@param speed number # 
---@param angle number # 
---@param tilt number # 
---@param arc number # 
function Mob:ProjectileAnimation(to, item_id, is_arrow, speed, angle, tilt, arc) end

---@param to Mob # 
---@param item_id number # 
---@param is_arrow boolean # 
---@param speed number # 
---@param angle number # 
function Mob:ProjectileAnimation(to, item_id, is_arrow, speed, angle) end

---@param to Mob # 
---@param item_id number # 
---@param is_arrow boolean # 
---@param speed number # 
function Mob:ProjectileAnimation(to, item_id, is_arrow, speed) end

---@param to Mob # 
---@param item_id number # 
---@param is_arrow boolean # 
function Mob:ProjectileAnimation(to, item_id, is_arrow) end

---@param to Mob # 
---@param item_id number # 
function Mob:ProjectileAnimation(to, item_id) end

---@param to Mob # 
---@param item_id number # 
---@param is_arrow boolean # 
---@param speed number # 
---@param angle number # 
---@param tilt number # 
function Mob:ProjectileAnimation(to, item_id, is_arrow, speed, angle, tilt) end

---@param client Client # 
---@param message string # 
---@param opts? Object # 
function Mob:QuestSay(client, message, opts) end

---@param send_illusion number # 
function Mob:RandomizeFeatures(send_illusion) end

function Mob:RandomizeFeatures() end

---@param send_illusion number # 
---@param save_variables number # 
function Mob:RandomizeFeatures(send_illusion, save_variables) end

---@param other Mob # 
function Mob:RangedAttack(other) end

function Mob:RemoveAllNimbusEffects() end

---@param effect_id number # 
function Mob:RemoveNimbusEffect(effect_id) end

function Mob:RemovePet() end

---@param resist_type number # 
---@param spell_id number # 
---@param caster Mob # 
---@param use_resist_override? boolean # 
---@param resist_override? number # 
---@return number
function Mob:ResistSpell(resist_type, spell_id, caster, use_resist_override, resist_override) end

---@param x number # 
---@param y number # 
---@param z number # 
function Mob:RunTo(x, y, z) end

---@param message string # 
function Mob:Say(message) end

---@param message string # 
---@param language number # 
function Mob:Say(message, language) end

---@return boolean
function Mob:SeeHide() end

---@return boolean
function Mob:SeeImprovedHide() end

---@return number
function Mob:SeeInvisible() end

---@return number
function Mob:SeeInvisibleUndead() end

---@param parm1 number # 
---@param parm2 number # 
---@param parm3 number # 
---@param parm4 number # 
---@param parm5 number # 
function Mob:SendAppearanceEffect(parm1, parm2, parm3, parm4, parm5) end

---@param parm1 number # 
---@param parm2 number # 
---@param parm3 number # 
---@param parm4 number # 
---@param parm5 number # 
---@param specific_target Client # 
function Mob:SendAppearanceEffect(parm1, parm2, parm3, parm4, parm5, specific_target) end

---@param spell_id number # 
---@param cast_time number # 
function Mob:SendBeginCast(spell_id, cast_time) end

---@param illusion Object # 
function Mob:SendIllusionPacket(illusion) end

---@param effect_id number # 
---@param duration number # 
---@param finish_delay number # 
---@param zone_wide boolean # 
---@param unk020 number # 
---@param perm_effect? boolean # 
function Mob:SendSpellEffect(effect_id, duration, finish_delay, zone_wide, unk020, perm_effect) end

---@param x number # 
---@param y number # 
---@param z number # 
function Mob:SendTo(x, y, z) end

---@param x number # 
---@param y number # 
---@param z number # 
function Mob:SendToFixZ(x, y, z) end

---@param material_slot number # 
function Mob:SendWearChange(material_slot) end

---@param rank_id number # 
---@param new_value number # 
---@param charges? number # 
---@return boolean
function Mob:SetAA(rank_id, new_value, charges) end

---@param value boolean # 
function Mob:SetAllowBeneficial(value) end

---@param app number # 
---@param ignore_self boolean # 
function Mob:SetAppearance(app, ignore_self) end

---@param app number # 
function Mob:SetAppearance(app) end

---@param new_body number # 
---@param overwrite_orig boolean # 
function Mob:SetBodyType(new_body, overwrite_orig) end

---@param bucket_name string # 
---@param bucket_value string # 
function Mob:SetBucket(bucket_name, bucket_value) end

---@param bucket_name string # 
---@param bucket_value string # 
---@param expiration string # 
function Mob:SetBucket(bucket_name, bucket_value, expiration) end

---@param spell_id number # 
function Mob:SetBuffDuration(spell_id) end

---@param spell_id number # 
---@param duration number # 
function Mob:SetBuffDuration(spell_id, duration) end

---@param wp number # 
function Mob:SetCurrentWP(wp) end

---@param set boolean # 
function Mob:SetDestructibleObject(set) end

---@param disable boolean # 
function Mob:SetDisableMelee(disable) end

---@param name string # 
---@param value string # 
function Mob:SetEntityVariable(name, value) end

---@param haste number # 
function Mob:SetExtraHaste(haste) end

---@param value number # 
function Mob:SetFlurryChance(value) end

---@param value number # 
function Mob:SetFlyMode(value) end

---@param value number # 
function Mob:SetGender(value) end

---@param name string # name of global variable
---@param newvalue string # 
---@param options number # 
---@param duration string # 
---@param other? Mob # 
function Mob:SetGlobal(name, newvalue, options, duration, other) end

---@param hp number # 
function Mob:SetHP(hp) end

---@param other Mob # 
function Mob:SetHate(other) end

---@param other Mob # 
---@param hate number # 
---@param damage number # 
function Mob:SetHate(other, hate, damage) end

---@param other Mob # 
---@param hate number # 
function Mob:SetHate(other, hate) end

---@param value number # 
function Mob:SetHeading(value) end

---@param state number # 
function Mob:SetInvisible(state) end

---@param value boolean # 
function Mob:SetInvul(value) end

---@param level number # 
---@param command? boolean # 
function Mob:SetLevel(level, command) end

---@param mana number # 
function Mob:SetMana(mana) end

---@param new_ooc_regen number # 
function Mob:SetOOCRegen(new_ooc_regen) end

---@param new_pet Mob # 
function Mob:SetPet(new_pet) end

---@param order number # 
function Mob:SetPetOrder(order) end

---@param value boolean # 
function Mob:SetPseudoRoot(value) end

---@param value number # 
function Mob:SetRace(value) end

---@param running boolean # 
function Mob:SetRunning(running) end

---@param invisible_level number # 
function Mob:SetSeeInvisibleLevel(invisible_level) end

---@param invisible_level number # 
function Mob:SetSeeInvisibleUndeadLevel(invisible_level) end


---@param skill_id number #
---@param value number #
function Mob:SetSkill(skill_id, value) end

---@param material_slot number # 
---@param red_tint number # 
---@param green_tint number # 
---@param blue_tint number # 
function Mob:SetSlotTint(material_slot, red_tint, green_tint, blue_tint) end

---@param ability number # 
---@param level number # 
function Mob:SetSpecialAbility(ability, level) end

---@param ability number # 
---@param param number # 
---@param value number # 
function Mob:SetSpecialAbilityParam(ability, param, value) end

---@param t Mob # 
function Mob:SetTarget(t) end

---@param on boolean # 
function Mob:SetTargetable(on) end

---@param value number # 
function Mob:SetTexture(value) end

---@param message string # 
---@param language number # 
function Mob:Shout(message, language) end

---@param message string # 
function Mob:Shout(message) end

---@param signal_id number # 
function Mob:Signal(signal_id) end

---@param caster Mob # 
---@param spell_id number # 
---@param partial number # 
function Mob:SpellEffect(caster, spell_id, partial) end

---@param spell_id number # 
---@param target Mob # 
---@param slot number # 
---@param mana_used number # 
---@param inventory_slot number # 
---@param resist_adjust number # 
---@return boolean
function Mob:SpellFinished(spell_id, target, slot, mana_used, inventory_slot, resist_adjust) end

---@param spell_id number # 
---@param target Mob # 
---@param slot number # 
---@param mana_used number # 
---@param inventory_slot number # 
---@param resist_adjust number # 
---@param proc number # 
function Mob:SpellFinished(spell_id, target, slot, mana_used, inventory_slot, resist_adjust, proc) end

---@param spell_id number # 
---@param target Mob # 
---@param slot number # 
---@param mana_used number # 
function Mob:SpellFinished(spell_id, target, slot, mana_used) end

---@param spell_id number # 
---@param target Mob # 
---@param slot number # 
function Mob:SpellFinished(spell_id, target, slot) end

---@param spell_id number # 
---@param target Mob # 
---@param slot number # 
---@param mana_used number # 
---@param inventory_slot number # 
function Mob:SpellFinished(spell_id, target, slot, mana_used, inventory_slot) end

---@param spell_id number # 
---@param target Mob # 
function Mob:SpellFinished(spell_id, target) end

function Mob:Spin() end

function Mob:StopNavigation() end

---@param duration number # 
function Mob:Stun(duration) end

---@param name string # name of global variable
---@param value string # 
---@param duration string # 
---@param npc_id number # 
---@param char_id number # 
---@param zone_id number # 
function Mob:TarGlobal(name, value, duration, npc_id, char_id, zone_id) end

---@param newname? string # 
function Mob:TempName(newname) end

---@param other Mob # 
function Mob:ThrowingAttack(other) end

---@param defender Mob # 
---@param damage number # 
function Mob:TryFinishingBlow(defender, damage) end

---@param distance number # 
---@param angle number # 
function Mob:TryMoveAlong(distance, angle) end

---@param distance number # 
---@param angle number # 
---@param send boolean # 
function Mob:TryMoveAlong(distance, angle, send) end

function Mob:UnStun() end

---@param x number # 
---@param y number # 
---@param z number # 
function Mob:WalkTo(x, y, z) end

---@param material_slot number # 
---@param texture number # 
---@param color number # 
function Mob:WearChange(material_slot, texture, color) end

function Mob:WipeHateList() end
