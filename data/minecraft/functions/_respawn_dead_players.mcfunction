execute as @p[tag=!Staff,scores={deaths=1..,checkpoint=0}] run tp @s 227 34 24 -90 0
execute as @p[tag=!Staff,scores={deaths=1..,checkpoint=0}] run scoreboard players set @s deaths 0

execute as @p[tag=!Staff,scores={deaths=1..,checkpoint=1}] run tp @s 271 41 -8 90 0
execute as @p[tag=!Staff,scores={deaths=1..,checkpoint=1}] run scoreboard players set @s deaths 0

execute as @p[tag=!Staff,scores={deaths=1..,checkpoint=2}] run tp @s 271 48 -24 90 0
execute as @p[tag=!Staff,scores={deaths=1..,checkpoint=2}] run scoreboard players set @s deaths 0

execute as @p[tag=!Staff,scores={deaths=1..,checkpoint=3}] run tp @s 262 55 7 -90 0
execute as @p[tag=!Staff,scores={deaths=1..,checkpoint=3}] run scoreboard players set @s deaths 0

# execute at @p[tag=!Staff,scores={deaths=1..}] run function equip_starting_gear