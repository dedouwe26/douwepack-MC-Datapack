##
 # detect.mcfunction
 # tick
 #
 # Created by de_douwe.
##

### from on to off from off to on
execute as @a[scores={vanish_trigger=1..}] if data entity @s SelectedItem{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:20201,vanishitem:1b,display:{Name:'{"text": "Vanish Item","color": "aqua","bold": true,"italic": false}',Lore:['','[{"text": "This Vanish Item is ","color": "yellow","italic": true},{"text": "Off","bold": true,"color": "red"}]']}}} run function douwepack:vanish_item/off_on
schedule function douwepack:vanish_item/detect2 5t