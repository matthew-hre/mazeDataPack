#please do not manually call this function
execute if score roomsSet roomsSet matches 64.. run scoreboard players set mazeGenerated mazeGenerated 1
execute if score roomsSet roomsSet matches 64.. run scoreboard players set roomsSet roomsSet 0

# show message if no mobs   
execute if score peaceful peaceful matches 1 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Skipping Mob Generation! (peaceful_maze is toggled)","bold":true,"color":"light_purple"}]

# spawn mobs if scoreboard peaceful is 0
execute if score peaceful peaceful matches 0 positioned 240 27 0 at @e[sort=random,limit=60,type=minecraft:armor_stand,tag=spawn_zombie,distance=..75] run summon minecraft:zombie ~ ~ ~ {PersistenceRequired: 1}
execute if score peaceful peaceful matches 0 positioned 240 27 0 at @e[sort=random,limit=50,type=minecraft:armor_stand,tag=spawn_spider,distance=..75] run summon minecraft:spider ~ ~ ~ {PersistenceRequired: 1}
execute if score peaceful peaceful matches 0 positioned 240 27 0 at @e[sort=random,limit=40,type=minecraft:armor_stand,tag=spawn_skeleton,distance=..75] run summon minecraft:skeleton ~ ~ ~ {PersistenceRequired: 1, HandItems: [{Count: 1, id: "bow"}, {}]}
execute if score peaceful peaceful matches 0 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Starting Mob Generation! (peaceful_maze is not toggled)","bold":true,"color":"light_purple"}]
execute if score peaceful peaceful matches 0 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Spawning Zombies!","bold":true,"color":"light_purple"}]
execute if score peaceful peaceful matches 0 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Spawning Spiders!","bold":true,"color":"light_purple"}]
execute if score peaceful peaceful matches 0 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Spawning Skeletons!","bold":true,"color":"light_purple"}]

# kill a couple first floor enemies
execute if score peaceful peaceful matches 0 positioned 240 27 0 at @e[sort=random,limit=10,y=33,dy=35,distance=..75] run kill @e[distance=..1]

# generate chests 
execute positioned 240 27 0 at @e[sort=random,limit=8,type=minecraft:armor_stand,tag=spawn_chest,distance=..75] run setblock ~ ~ ~ minecraft:chest{LootTable: "minecraft:chests/sam_chest"}
execute positioned 240 27 0 at @e[sort=random,type=minecraft:armor_stand,tag=spawn_chest_puzzle,distance=..75] run setblock ~ ~ ~ minecraft:chest{LootTable: "minecraft:chests/sam_chest"}

execute positioned 240 27 0 run kill @e[type=minecraft:armor_stand,distance=..75]

# add villagers
tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Generating Shop Keepers!","bold":true,"color":"light_purple"}]
execute positioned 277.5 34 -12.5 run summon villager ~ ~ ~ {VillagerData: {profession: "armorer", level: 99, type: "plains"}, Invulnerable: 1, PersistenceRequired: 1, Silent: 1, NoAI: 1, Rotation: [150f, 0f], Offers: {Recipes: [{buy: {id: "emerald", Count: 8}, sell: {id: "iron_sword", Count: 1}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "emerald", Count: 10}, sell: {id: "iron_leggings", Count: 1}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "emerald", Count: 8}, buyB: {id: "iron_chestplate", Count: 1}, sell: {id: "iron_chestplate", Count: 1, tag: {Enchantments: [{id: "protection", lvl: 3}]}}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "emerald", Count: 4}, sell: {id: "apple", Count: 8}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "emerald", Count: 4}, sell: {id: "arrow", Count: 12}, rewardExp: 0b, maxUses: 9999999}]}}
execute positioned 272.5 41 -28 run summon villager ~ ~ ~ {VillagerData: {profession: "weaponsmith", level: 99, type: "plains"}, Invulnerable: 1, PersistenceRequired: 1, Silent: 1, NoAI: 1, Rotation: [48f, 2f], Offers: {Recipes: [{buy: {id: "emerald", Count: 24}, sell: {id: "diamond_sword", Count: 1}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "rotten_flesh", Count: 4}, sell: {id: "emerald", Count: 1}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "iron_leggings", Count: 1}, buyB: {id: "emerald", Count: 8}, sell: {id: "iron_leggings", Count: 1, tag: {Enchantments: [{id: "protection", lvl: 4}]}}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "string", Count: 8}, buyB: {id: "emerald", Count: 6}, sell: {id: "bow", Count: 1}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "emerald", Count: 4}, sell: {id: "apple", Count: 8}, rewardExp: 0b, maxUses: 9999999}]}}
execute positioned 256 48 4 run summon villager ~ ~ ~ {VillagerData: {profession: "weaponsmith", level: 99, type: "plains"}, Invulnerable: 1, PersistenceRequired: 1, Silent: 1, NoAI: 1, Rotation: [55f, 2f], Offers: {Recipes: [{buy: {id: "emerald", Count: 20}, sell: {id: "iron_boots", Count: 1}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "emerald", Count: 20}, sell: {id: "iron_helmet", Count: 1}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "emerald", Count: 32}, sell: {id: "shield", Count: 1}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "emerald", Count: 8}, buyB: {id: "apple", Count: 1}, sell: {id: "golden_apple", Count: 1}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "emerald", Count: 8}, buyB: {id: "arrow", Count: 4}, sell: {id: "tipped_arrow", Count: 4, tag: {Potion: "minecraft:poison"}}, rewardExp: 0b, maxUses: 9999999}, {buy: {id: "emerald", Count: 4}, sell: {id: "apple", Count: 8}, rewardExp: 0b, maxUses: 9999999}]}}

tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Generation complete! Good luck!","bold":true,"color":"light_purple"}]

scoreboard players set mazeGenerated mazeGenerated 1