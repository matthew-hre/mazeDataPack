#please do not manually call this function
execute as @p[tag=!joined,tag=Staff] run tp @p[tag=!joined,tag=Staff] 240 27 -7 -180 0
execute as @p[tag=!joined,tag=Staff] run gamemode creative
tag @p[tag=!joined,tag=Staff] add joined
# @a for good measure
scoreboard players reset @a[tag=Staff] quitCount