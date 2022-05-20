# begin generation IF no rooms set
execute unless score roomsSet roomsSet matches 1.. run tellraw @p ["",{"text":"[Server] ","color":"white"},{"text":"Generating a new floor!","bold":true,"color":"light_purple"}]
execute unless score roomsSet roomsSet matches 1.. run fill 221 4 30 221 4 30 minecraft:redstone_block
# throw an error if rooms already set
execute if score roomsSet roomsSet matches 1.. run tellraw @p ["",{"text":"[Server] ","color":"white"},{"text":"ERROR! Generation attempt failed: Rooms already exist!","bold":true,"color":"red"}]
