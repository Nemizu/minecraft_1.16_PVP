execute as @a[scores={job=7,use_snowball=1}] at @s run tag @e[distance=..2,type=minecraft:snowball] add snow7
execute as @a[scores={job=7,use_snowball=1},predicate=library:sneaktime20to50] at @s run tag @e[distance=..2,type=minecraft:snowball] add exsnow7
scoreboard players add @e[tag=snow7] ct1 1
execute at @e[tag=snow7,tag=!exsnow7,scores={ct1=1}] run summon small_fireball ~ ~ ~ { Tags:["fire7"],NoGravity:true,Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Marker:1b,Tags:["re_air"],Invisible:true}]} 
execute at @e[tag=snow7,tag=exsnow7,scores={ct1=1}] run summon fireball ~ ~ ~ { Tags:["fire7","exfire7"],NoGravity:true,ExplosionPower:2}
execute as @e[tag=fire7] at @s run data modify entity @s Motion[0] set from entity @e[distance=..2,limit=1,tag=snow7] Motion[0]
execute as @e[tag=fire7] at @s run data modify entity @s Motion[1] set from entity @e[distance=..2,limit=1,tag=snow7] Motion[1]
execute as @e[tag=fire7] at @s run data modify entity @s Motion[2] set from entity @e[distance=..2,limit=1,tag=snow7] Motion[2]
execute as @a[scores={job=7,use_snowball=1}] at @s run data modify entity @e[distance=..2,tag=fire7,limit=1] Owner set from entity @s UUID
kill @e[tag=snow7,scores={ct1=1}]

#ct関係
scoreboard players set @a[scores={job=7,use_snowball=1},predicate=!library:sneaktime20to50] use_snowball 30
kill @e[tag=fire7,scores={ct1=40..}]
kill @e[tag=fire7,tag=exfire7,scores={ct1=20..}]
scoreboard players add @e[tag=fire7] ct1 1
scoreboard players add @a[scores={use_snowball=1..,job=7}] use_snowball 1
give @a[scores={use_snowball=50,job=7}] snowball{CustomModelData:2929} 1
scoreboard players set @a[scores={use_snowball=50..,job=7}] use_snowball 0
execute as @a[scores={job=7,sneakTime=20}] at @s run playsound block.end_portal_frame.fill master @s
execute as @a[scores={job=7,sneakTime=50}] at @s run playsound entity.zombie.infect master @s ~ ~ ~ 0.5 2

#消火用
tag @e[predicate=!library:onfireball,tag=re_air] add rem_amr
execute at @e[predicate=!library:onfireball,tag=re_air] run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace fire 
kill @e[tag=rem_amr]
