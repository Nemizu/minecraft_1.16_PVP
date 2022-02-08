execute at @a[scores={job=7,use_bow=1}] run tag @e[distance=..2,type=arrow] add ice

clear @a[scores={job=7,use_bow=1}] bow 1

scoreboard players add @e[tag=ice] ct1 1

execute as @e[tag=ice,scores={ct1=1}] store result score @s id1 run data get entity @s Motion[0] 10000
execute as @e[tag=ice,scores={ct1=1}] store result score @s id2 run data get entity @s Motion[1] 10000
execute as @e[tag=ice,scores={ct1=1}] store result score @s id3 run data get entity @s Motion[2] 10000
execute as @e[tag=ice,scores={ct1=2..}] store result entity @s Motion[0] double 0.00015 run scoreboard players get @s id1
execute as @e[tag=ice,scores={ct1=2..}] store result entity @s Motion[1] double 0.00015 run scoreboard players get @s id2
execute as @e[tag=ice,scores={ct1=2..}] store result entity @s Motion[2] double 0.00015 run scoreboard players get @s id3
data merge entity @e[tag=ice,limit=1] {NoGravity:true}

scoreboard players add @a[scores={job=7,use_bow=1..}] use_bow 1

give @a[scores={job=7,use_bow=60}] bow{CustomModelData:1,Enchantments:[{id:"minecraft:punch",lvl:1s},{id:"minecraft:infinity",lvl:1s}]}

scoreboard players set @a[scores={use_bow=60..,job=7}] use_bow 0

execute at @e[tag=ice] run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0 3 normal

execute as @a[nbt=!{Inventory:[{Slot:10b,id:"minecraft:arrow"}]},scores={job=7}] run replaceitem entity @s inventory.1 minecraft:arrow
