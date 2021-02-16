##
 # build2.mcfunction
 # 
 #
 # Created by de_douwe.
##

execute as @e[tag=dim_switch] at @s in minecraft:the_nether run tp @s ~ ~ ~
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~ ~-1 ~1 stone_brick_stairs[facing=north]
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~1 ~-1 ~ stone_brick_stairs[facing=west]
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~ ~-1 ~-1 stone_brick_stairs[facing=south]
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~-1 ~-1 ~ stone_brick_stairs[facing=east]
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~-1 ~-1 ~1 smooth_sandstone
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~1 ~-1 ~1 smooth_sandstone
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~1 ~-1 ~-1 smooth_sandstone
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~-1 ~-1 ~-1 smooth_sandstone
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~ ~-1 ~ emerald_block
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run fill ~1 ~1 ~-1 ~-1 ~ ~1 air
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~ ~-1 ~2 command_block{Command:"execute as @p[distance=0..4] at @s in minecraft:overworld run tp @s ~ ~ ~"}
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~ ~ ~2 polished_blackstone_button[face=floor]
kill @e[tag=dim_switch]