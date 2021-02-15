##
 # build.mcfunction
 # 
 #
 # Created by de_douwe.
##

setblock ~ ~-1 ~1 stone_brick_stairs[facing=north] destroy
setblock ~1 ~-1 ~ stone_brick_stairs[facing=west] destroy
setblock ~ ~-1 ~-1 stone_brick_stairs[facing=south] destroy
setblock ~-1 ~-1 ~ stone_brick_stairs[facing=east] destroy
setblock ~-1 ~-1 ~1 smooth_sandstone destroy
setblock ~1 ~-1 ~1 smooth_sandstone destroy
setblock ~1 ~-1 ~-1 smooth_sandstone destroy
setblock ~-1 ~-1 ~-1 smooth_sandstone destroy
setblock ~ ~-1 ~ emerald_block destroy
setblock ~ ~ ~ birch_pressure_plate
setblock ~ ~-2 ~ command_block{Command:"execute as @p[distance=1..3] at @s in minecraft:the_nether run tp @s ~ ~ ~"}
execute as @s run schedule function douwepack:dim_switch/build2 4t