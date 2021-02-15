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
setblock ~ ~ ~ command_block{Command:"..."}