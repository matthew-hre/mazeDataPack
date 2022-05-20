execute if score peaceful temp matches 1 run scoreboard players set peaceful temp 0
execute if score peaceful peaceful matches 1 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Peaceful mode is now OFF!","bold":true,"color":"red"}]
execute if score peaceful peaceful matches 0 run tellraw @a ["",{"text":"[Server] ","color":"white"},{"text":"Peaceful mode is now ON!","bold":true,"color":"green"}]

execute if score peaceful peaceful matches 1 run scoreboard players set peaceful peaceful 0
execute if score peaceful temp matches 0 if score peaceful peaceful matches 0 run scoreboard players set peaceful temp 1
execute if score peaceful peaceful matches 0 unless score peaceful temp matches 1 run scoreboard players set peaceful peaceful 1