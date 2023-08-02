---@meta

---EntityList contains a list of every entity of a zone. This includes NPCs, Clients, Bots
---@class EntityList
---@field null boolean # returns true when a corpse does not exist
---@field valid boolean # returns false when a corpse is invalid
EntityList = {}

---@param p Mob # 
---@return boolean
function EntityList:CanAddHateForMob(p) end

---@param from Mob # 
---@param channel_num number # 
---@param language number # 
---@param message string # 
function EntityList:ChannelMessage(from, channel_num, language, message) end

function EntityList:ClearClientPetitionQueue() end

---@param who Mob # 
function EntityList:ClearFeignAggro(who) end

---@return number
function EntityList:DeleteNPCCorpses() end

---@return number
function EntityList:DeletePlayerCorpses() end

---@param who Mob # 
function EntityList:DoubleAggro(who) end

---@param who Mob # 
---@return boolean
function EntityList:Fighting(who) end

---@param sender Mob # 
---@param skip_sender boolean # 
---@param dist number # 
---@param type number # 
---@param filter number # 
---@param message string # 
function EntityList:FilteredMessageClose(sender, skip_sender, dist, type, filter, message) end

---@param id number # 
---@return Door
function EntityList:FindDoor(id) end

---@param bot_id number # 
---@return Bot
function EntityList:GetBotByID(bot_id) end


---@param bot_name string # 
---@return Bot
function EntityList:GetBotByName(bot_name) end

---@return BotList
function EntityList:GetBotList() end

---@param entity_id number # 
---@return Client
function GetBotOwnerByBotEntityID(entity_id) end

---@param bot_id number # 
---@return Client
function GetBotOwnerByBotID(bot_id) end

---@param character_id number # 
---@param class_id? number # 
---@return BotList
function EntityList:GetBotListByCharacterID(character_id, class_id) end

---@param client_name string # 
---@param class_id? number # 
---@return BotList
function EntityList:GetBotListByClientName(client_name, class_id) end

---@param acct_id number # 
---@return Client
function EntityList:GetClientByAccID(acct_id) end

---@param char_id number # 
---@return Client
function EntityList:GetClientByCharID(char_id) end

---@param id number # 
---@return Client
function EntityList:GetClientByID(id) end

---@param name string # 
---@return Client
function EntityList:GetClientByName(name) end

---@param wid number # 
---@return Client
function EntityList:GetClientByWID(wid) end

---@return ClientList
function EntityList:GetClientList() return {} end

---@param id number # 
---@return Corpse
function EntityList:GetCorpseByID(id) end

---@param name string # 
---@return Corpse
function EntityList:GetCorpseByName(name) end

---@param client Client # 
---@return Corpse
function EntityList:GetCorpseByOwner(client) end

---@return CorpseList
function EntityList:GetCorpseList() return {} end

---@param db_id number # 
---@return DoorList
function EntityList:GetDoorsByDBID(db_id) end

---@param door_id number # 
---@return DoorList
function EntityList:GetDoorsByDoorID(door_id) end

---@param id number # 
---@return Door
function EntityList:GetDoorsByID(id) end

---@return DoorList
function EntityList:GetDoorsList() return {} end

---@param client Client # 
---@return Group
function EntityList:GetGroupByClient(client) end

---@param id number # 
---@return Group
function EntityList:GetGroupByID(id) end

---@param name string # 
---@return Group
function EntityList:GetGroupByLeaderName(name) end

---@param mob Mob # 
function EntityList:GetGroupByMob(mob) end

---@param name string # 
---@return Mob
---@overload fun(id:number):Mob
function EntityList:GetMob(name) end

---@param npc_type number # 
---@return Mob
function EntityList:GetMobByNpcTypeID(npc_type) end

--- Returns the mob that matches entity id provided.
---@param id number # 
---@return Mob
function EntityList:GetMobID(id) end

---@return MobList
function EntityList:GetMobList() end

--- Returns the NPC that matches entity id provided.
---@param id number # 
---@return NPC
function EntityList:GetNPCByID(id) end

--- Returns the NPC that matches npc_type id provided.
---@param npc_type number # 
---@return NPC
function EntityList:GetNPCByNPCTypeID(npc_type) end

--- Returns the NPC that matches spawn_id provided.
---@param spawn_id number # 
---@return NPC
function EntityList:GetNPCBySpawnID(spawn_id) end

--- Returns a list of all NPCs in the current zone
---@return NPCList
function EntityList:GetNPCList() return {} end

--- Returns the object that matches db id provided.
---@param db_id number # 
function EntityList:GetObjectByDBID(db_id) end

--- Returns the object that matches entity id provided.
---@param id number # 
function EntityList:GetObjectByID(id) end

--- Returns a list of all objects in the current zone
---@return ObjectList
function EntityList:GetObjectList() return {} end

--- Returns a raid instance based on the client provided.
---@param client Client # 
---@return Raid
function EntityList:GetRaidByClient(client) end

--- Returns a raid instance based on the raid id provided.
---@param id number # 
---@return Raid
function EntityList:GetRaidByID(id) end

--- Returns a random bot that matches the location requirements
---@param x? number # 
---@param y? number # 
---@param z? number # 
---@param distance? number # 
---@param exclude_bot? number # 
---@return Bot
function EntityList:GetRandomBot(x, y, z, distance, exclude_bot) end

--- Returns a random client that matches the location requirements
---@param x? number # 
---@param y? number # 
---@param z? number # 
---@param distance? number # 
---@param exclude_client? number # 
---@return Client
function EntityList:GetRandomClient(x, y, z, distance, exclude_client) end

--- Returns a random mob that matches the location requirements
---@param x? number # 
---@param y? number # 
---@param z? number # 
---@param distance? number # 
---@param exclude_mob? number # 
---@return Mob
function EntityList:GetRandomMob(x, y, z, distance, exclude_mob) end

--- Returns a random NPC that matches the location requirements
---@param x? number # 
---@param y? number # 
---@param z? number # 
---@param distance? number # 
---@param exclude_npc? number # 
---@return NPC
function EntityList:GetRandomNPC(x, y, z, distance, exclude_npc) end

--- Returns a client list of every client in the zone, shuffled randomly
---@return ClientList
function EntityList:GetShuffledClientList() end

--- Returns a spawn based on the provided entity id
---@param id number # 
---@return Spawn
function EntityList:GetSpawnByID(id) end

--- Returns a list of all spawns in the current zone
---@return SpawnList
function EntityList:GetSpawnList() end

--- Reduces the aggro of the mob provided by half
---@param who Mob # 
function EntityList:HalveAggro(who) end

--- Returns true if the npc_type_id provided is spawned in the zone
---@param npc_type number # 
---@return boolean
function EntityList:IsMobSpawnedByNpcTypeID(npc_type) end

--- Returns a unique form of a name
---@param name string # 
---@return string
function EntityList:MakeNameUnique(name) end

---@param type number # 
---@param priority number # 
---@param fade_in number # 
---@param fade_out number # 
---@param duration number # 
---@param message string # 
---@overload fun(type:number, message:string, duration?:number)
function EntityList:Marquee(type, priority, fade_in, fade_out, duration, message) end

---@param guild_dbid number # 
---@param type number # 
---@param message string # 
function EntityList:Message(guild_dbid, type, message) end

---@param sender Mob # 
---@param skip_sender boolean # 
---@param dist number # 
---@param type number # 
---@param message string # 
function EntityList:MessageClose(sender, skip_sender, dist, type, message) end

---@param who Mob # 
---@param skip_close boolean # 
---@param type number # 
---@param message string # 
function EntityList:MessageGroup(who, skip_close, type, message) end

---@param guild_dbid number # 
---@param min_status number # 
---@param type number # 
---@param message string # 
function EntityList:MessageStatus(guild_dbid, min_status, type, message) end

---@param opener Mob # 
function EntityList:OpenDoorsNear(opener) end

---@param who Mob # 
function EntityList:RemoveFromHateLists(who) end

---@param who Mob # 
---@param set_to_one boolean # 
function EntityList:RemoveFromHateLists(who, set_to_one) end

---@param mob Mob # 
function EntityList:RemoveFromTargets(mob) end

---@param mob Mob # 
---@param RemoveFromXTargets boolean # 
function EntityList:RemoveFromTargets(mob, RemoveFromXTargets) end

---@param name string # 
---@return string
function EntityList:RemoveNumbers(name) end

---@param target Mob # 
---@param new_target Mob # 
function EntityList:ReplaceWithTarget(target, new_target) end

---@param character_id number # 
---@param signal_id number # 
function EntityList:SignalAllBotsByOwnerCharacterID(character_id, signal_id) end

---@param signal number # 
function EntityList:SignalAllClients(signal) end

---@param bot_id number # 
---@param signal_id number # 
function EntityList:SignalBotByBotID(bot_id, signal_id) end

---@param bot_name string # 
---@param signal_id number # 
function EntityList:SignalBotByBotName(bot_name, signal_id) end

---@param npc_id number # 
---@param signal number # 
function EntityList:SignalMobsByNPCID(npc_id, signal) end

---@param entity_id number # Entity ID to check mob is spawned
function EntityList:IsMobSpawnedByEntityID(entity_id) end