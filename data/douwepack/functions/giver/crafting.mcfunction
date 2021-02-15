### add tags

tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:netherite_ingot",Count:6b}}] add craftitem_1
tag @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:enchanting_table",Count:1b}}] add craftitem_2

### search items with tags and summon the item

execute at @e[tag=craftitem_1] run execute at @e[tag=craftitem_2,distance=..1] run summon item ~ ~0.1 ~ {Tags:["crafted_item"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Giver","color":"#00FFF7","bold":true,"italic":false}'},HideFlags:5,Unbreakable:1b,CustomModelData:112244,giver:1b}}}
### kill the other items

execute at @e[tag=crafted_item] run kill @e[tag=craftitem_1,sort=nearest]
execute at @e[tag=crafted_item] run kill @e[tag=craftitem_2,sort=nearest]
### play the sound

execute at @e[tag=crafted_item] run playsound block.anvil.use master @a
execute at @e[tag=crafted_item] run playsound entity.lightning_bolt.impact master @a
execute at @e[tag=crafted_item] run playsound entity.lightning_bolt.thunder master @a

### remove the tag

tag @e[tag=crafted_item] remove crafted_item

