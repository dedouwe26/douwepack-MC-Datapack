##
 # on_off.mcfunction
 # 
 #
 # Created by de_douwe.
##

replaceitem entity @s weapon.mainhand carrot_on_a_stick{CustomModelData:20201,vanishitem:1b,display:{Name:'{"text": "Vanish Item","color": "aqua","bold": true,"italic": false}',Lore:['','[{"text": "This Vanish Item is ","color": "yellow","italic": true},{"text": "Off","bold": true,"color": "red"}]']}}
execute as @a[scores={vanish_trigger=1..}] if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{vanishitem:1b}} run effect clear @s invisibility
execute as @s run scoreboard players set @s vanish_trigger 0