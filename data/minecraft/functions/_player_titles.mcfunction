execute at @a[tag=!joined,tag=!Staff] run title @p[tag=!joined,tag=!Staff] times 20 60 20
execute as @a[tag=!joined,tag=!Staff] run title @p[tag=!joined,tag=!Staff] title ["",{"text":"Welcome ","color":"gold"},{"selector":"@p[tag=!joined, tag=!Staff]","color":"light_purple"},{"text":"!","color":"gold"}]

execute if score mazeGenerated mazeGenerated matches 0 as @a[tag=!Staff,tag=!joined] run title @p[tag=!Staff,tag=!joined] subtitle {"text":"Please wait while the maze is generating...","color":"dark_red"}
execute if score mazeGenerated mazeGenerated matches 0 as @a[tag=!Staff,tag=!joined] run playsound minecraft:entity.villager.no master @p[tag=!Staff,tag=!joined] ~ ~1 ~ 1 0

execute if score mazeGenerated mazeGenerated matches 1 as @a[tag=!Staff,scores={inMaze=0}] if score mazeGenerated mazeGenerated matches 1 run title @p subtitle {"text":"Are you ready to explore the maze?","color":"gray"}
execute if score mazeGenerated mazeGenerated matches 1 at @a[tag=!Staff,scores={inMaze=0}] if score mazeGenerated mazeGenerated matches 1 run playsound minecraft:entity.player.levelup master @p ~ ~1 ~ 1 0