# fill with air
execute unless score mazeGenerated mazeGenerated matches 1 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"ERROR! Can't clear maze if there's no maze to clear!","bold":true,"color":"red"}]

execute if score mazeGenerated mazeGenerated matches 1 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Clearing Maze!","bold":true,"color":"red"}]
execute if score mazeGenerated mazeGenerated matches 1 run fill 219 33 31 282 39 -32 air
execute if score mazeGenerated mazeGenerated matches 1 run fill 219 40 31 282 46 -32 air
execute if score mazeGenerated mazeGenerated matches 1 run fill 219 47 31 282 53 -32 air
execute if score mazeGenerated mazeGenerated matches 1 run fill 219 54 31 282 60 -32 air

execute if score mazeGenerated mazeGenerated matches 1 if score peaceful peaceful matches 1 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Killing Remaining Ground Items!","bold":true,"color":"red"}]
execute if score mazeGenerated mazeGenerated matches 1 if score peaceful peaceful matches 0 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Killing Remaining Entities!","bold":true,"color":"red"}]
# remove all entities except player and templates
execute if score mazeGenerated mazeGenerated matches 1 run kill @e[type=!player,tag=!template]
# twice for good measures
execute if score mazeGenerated mazeGenerated matches 1 run kill @e[type=!player,tag=!template]

execute if score mazeGenerated mazeGenerated matches 1 run kill @e[type=minecraft:minecart,distance=..75]

execute if score mazeGenerated mazeGenerated matches 1 run function _reset_statistics

execute if score mazeGenerated mazeGenerated matches 1 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Maze Successfully Cleared!","bold":true,"color":"red"}]
execute if score mazeGenerated mazeGenerated matches 1 run scoreboard players set mazeGenerated mazeGenerated 0