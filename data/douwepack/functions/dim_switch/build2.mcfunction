##
 # build2.mcfunction
 # 
 #
 # Created by de_douwe.
##

execute as @e[tag=dim_switch] at @s in minecraft:the_nether run tp @s ~ ~ ~
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~ ~-1 ~1 stone_brick_stairs[facing=north] destroy
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~1 ~-1 ~ stone_brick_stairs[facing=west] destroy
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~ ~-1 ~-1 stone_brick_stairs[facing=south] destroy
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~-1 ~-1 ~ stone_brick_stairs[facing=east] destroy
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~-1 ~-1 ~1 smooth_sandstone destroy
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~1 ~-1 ~1 smooth_sandstone destroy
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~1 ~-1 ~-1 smooth_sandstone destroy
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~-1 ~-1 ~-1 smooth_sandstone destroy
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~ ~-1 ~ emerald_block destroy
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run fill ~1 ~1 ~-1 ~-1 ~ ~1 air
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~ ~-1 ~2 command_block{Command:"execute as @p[distance=0..2] at @s in minecraft:overworld run tp @s ~ ~ ~"}
execute as @e[tag=dim_switch] at @s in minecraft:the_nether run setblock ~ ~-1 ~2 polished_blackstone_button
kill @e[tag=dim_switch]