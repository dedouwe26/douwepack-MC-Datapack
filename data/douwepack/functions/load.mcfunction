##
 # load.mcfunction
 # douwepack
 #
 # Created by de_douwe.
##
scoreboard objectives add on dummy
scoreboard objectives add clicked_onitem minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add vanish_trigger minecraft.used:minecraft.carrot_on_a_stick
tellraw @a {"text": "Douwepack is loaded","color": "yellow","italic": true}
