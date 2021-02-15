##
 # detect.mcfunction
 # 
 #
 # Created by de_douwe.
##

### from on to off from off to on
execute as @a[scores={clicked_onitem=1..}] if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{vanishitem:1b}} run replaceitem entity @s weapon.mainhand carrot_on_a_stick{vanishitem:2b,CustomModelData:20202}
execute as @a[scores={clicked_onitem=1..}] if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{vanishitem:2b}} run replaceitem entity @s weapon.mainhand carrot_on_a_stick{vanishitem:1b,CustomModelData:20201}

### effect on effect off
execute as @a[scores={clicked_onitem=1..}] if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{vanishitem:2b}} run effect give @s invisibility 1000000 255 true
execute as @a[scores={clicked_onitem=1..}] if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{vanishitem:1b}} run effect clear @s invisibility

### scoreboard set 0
execute as @a[scores={clicked_onitem=1..}] run scoreboard players set @s clicked_onitem 0