##
 # detect.mcfunction
 # 
 #
 # Created by de_douwe
##
scoreboard objectives add clicked_onitem minecraft.used:minecraft.carrot_on_a_stick

# detect

execute as @a[scores={clicked_onitem=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{giver:1b}}}] at @s run function douwepack:giver/give_op

# reset
scoreboard players remove @a[scores={clicked_onitem=1..}] clicked_onitem 1
