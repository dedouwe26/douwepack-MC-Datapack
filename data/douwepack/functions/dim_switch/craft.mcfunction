##
 # craft.mcfunction
 # 
 #
 # Created by de_douwe.
##

tag @e[type=item,nbt={Item:{id:"minecraft:obsidian",Count:4b},OnGround:1b}] add dimswitch_item
tag @e[type=item,nbt={Item:{id:"minecraft:respawn_anchor",Count:1b},OnGround:1b}] add dimswitch_item2
execute at @e[tag=dimswitch_item] run execute at @e[distance=0..1,sort=nearest,tag=dimswitch_item2] run summon item ~ ~0.1 ~ {Item:{id:"armor_stand",Count:2b,tag:{EntityTag:{Tags:["dim_switch"]},CustomModelData:1010}},Tags:["fresh_dimswitch"]}
execute as @e[tag=fresh_dimswitch] at @s run kill @e[distance=0..1,sort=nearest,tag=dimswitch_item]
execute as @e[tag=fresh_dimswitch] at @s run kill @e[distance=0..1,sort=nearest,tag=dimswitch_item2]
execute at @e[tag=fresh_dimswitch] run playsound block.anvil.use master @a
execute at @e[tag=fresh_dimswitch] run playsound entity.lightning_bolt.impact master @a
execute at @e[tag=fresh_dimswitch] run playsound entity.lightning_bolt.thunder master @a
execute as @e[tag=fresh_dimswitch] at @s run tag @s remove fresh_dimswitch