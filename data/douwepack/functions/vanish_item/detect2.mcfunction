##
 # detect2.mcfunction
 # 
 #
 # Created by de_douwe.
##

execute as @a[scores={vanish_trigger=1..}] if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:20202,vanishitem:2b,display:{Name:'{"text": "Vanish Item","color": "aqua","bold": true,"italic": false}',Lore:['','[{"text": "This Vanish Item is ","color": "yellow","italic": true},{"text": "On","bold": true,"color": "green"}]']}}} run function douwepack:vanish_item/on_off
