##
 # off_on.mcfunction
 # 
 #
 # Created by de_douwe.
##

replaceitem entity @s weapon.mainhand carrot_on_a_stick{CustomModelData:20202,vanishitem:2b,display:{Name:'{"text": "Vanish Item","color": "aqua","bold": true,"italic": false}',Lore:['','[{"text": "This Vanish Item is ","color": "yellow","italic": true},{"text": "On","bold": true,"color": "green"}]']}}
execute as @a[scores={vanish_trigger=1..}] if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{vanishitem:2b}} run effect give @s invisibility 1000000 255 true
execute as @s at @s run scoreboard players set @s vanish_trigger 0