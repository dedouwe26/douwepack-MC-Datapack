##
 # loop.mcfunction
 # 
 #
 # Created by de_douwe.
##

execute as @e[tag=dim_switch] at @s run function douwepack:dim_switch/build
schedule function douwepack:dim_switch/loop 10t