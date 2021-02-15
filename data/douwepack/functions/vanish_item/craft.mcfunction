##
 # craft.mcfunction
 # 
 #
 # Created by de_douwe.
##

tag @e[type=item,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:invisibility"}},OnGround:1b}] add craftitemB_1
tag @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:3b},OnGround:1b}] add craftitemB_2
execute as @e[tag=craftitemB_1] at @s run execute as @e[distance=0..1,sort=nearest,tag=craftitemB_2] at @s run summon item ~ ~0.01 ~ {Item:{id:"carrot_on_a_stick",Count:1b,tag:{Tags:["fresh_item"],CustomModelData:20201,vanishitem:1b}}}

execute as @e[tag=fresh_item] at @s run kill @e[type=item,distance=0..1,sort=nearest,tag=craftitemB_2]
execute as @e[tag=fresh_item] at @s run kill @e[type=item,distance=0..1,sort=nearest,tag=craftitemB_1]

execute at @e[tag=fresh_item] run playsound block.anvil.use master @a
execute at @e[tag=fresh_item] run playsound entity.lightning_bolt.impact master @a
execute at @e[tag=fresh_item] run playsound entity.lightning_bolt.thunder master @a

execute as @e[tag=fresh_item] at @s run tag @s remove fresh_item