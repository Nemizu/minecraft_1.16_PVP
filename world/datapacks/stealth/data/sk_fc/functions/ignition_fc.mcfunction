give @a[scores={use_bow=1..,job=8}] minecraft:arrow 1
execute at @a[scores={use_bow=1..,job=8,ct3=0}] run tag @e[type=arrow,distance=1..2] add ig_a
execute as @a[scores={use_bow=1..,job=8,ct3=0}] at @s run playsound minecraft:block.fire.ambient master @s
execute at @a[scores={use_bow=1..,job=8,ct2=0}] run tag @e[type=arrow,distance=1..2] add mf_a
clear @a[scores={use_bow=1..,job=8,ct3=0}] minecraft:blaze_rod
give @a[scores={use_bow=1..,job=8,ct3=0}] minecraft:blaze_rod 12
scoreboard players set @a[scores={use_bow=1..,job=8,ct3=0}] ct3 1
scoreboard players set @a[scores={use_bow=1..,job=8}] ct1 1

scoreboard players add @a[scores={ct3=1..,job=8}] ct3 1
scoreboard players remove @a[scores={ct3=1..,ct1=1..,job=8},predicate=library:chance50] ct3 1
clear @a[scores={ct3=20,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=20,job=8}] ct3 2
clear @a[scores={ct3=40,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=40,job=8}] ct3 2
clear @a[scores={ct3=60,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=60,job=8}] ct3 2
clear @a[scores={ct3=80,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=80,job=8}] ct3 2
clear @a[scores={ct3=100,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=100,job=8}] ct3 2
clear @a[scores={ct3=120,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=120,job=8}] ct3 2
clear @a[scores={ct3=140,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=140,job=8}] ct3 2
clear @a[scores={ct3=160,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=160,job=8}] ct3 2
clear @a[scores={ct3=180,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=180,job=8}] ct3 2
clear @a[scores={ct3=200,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=200,job=8}] ct3 2
clear @a[scores={ct3=220,job=8}] minecraft:blaze_rod 1
scoreboard players add @a[scores={ct3=220,job=8}] ct3 2
clear @a[scores={ct3=240,job=8}] minecraft:blaze_rod
execute as @a[scores={ct3=240..,job=8}] at @s run playsound minecraft:item.flintandsteel.use master @s
scoreboard players set @a[scores={ct3=240..,job=8}] ct3 0

clear @a[scores={use_bow=1..,job=8}] minecraft:blaze_powder
give @a[scores={use_bow=1..,job=8}] minecraft:blaze_powder 4

scoreboard players add @a[scores={ct1=1..,job=8}] ct1 1
execute as @a[scores={ct1=80..,job=8}] at @s run playsound minecraft:block.fire.extinguish master @s
scoreboard players set @a[scores={ct1=80..,job=8}] ct2 0
clear @a[scores={ct1=20,job=8}] minecraft:blaze_powder 1
clear @a[scores={ct1=40,job=8}] minecraft:blaze_powder 1
clear @a[scores={ct1=60,job=8}] minecraft:blaze_powder 1
clear @a[scores={ct1=80,job=8}] minecraft:blaze_powder
scoreboard players set @a[scores={ct1=80..,job=8}] ct1 0
scoreboard players add @a[scores={use_bow=1..,job=8}] ct2 1
scoreboard players set @a[scores={use_bow=1..,job=8}] use_bow 0
scoreboard players add @e[tag=mig,nbt={OnGround:1b}] ct1 1
scoreboard players add @e[tag=ig] ct1 1

scoreboard players add @e[tag=ig_a] ct1 1

execute as @e[tag=ig_a,nbt={inGround:0b},scores={ct1=2..30}] at @s run summon armor_stand ~ ~ ~ {Tags:["mig"],Invulnerable:1b,Invisible:1b}
execute as @e[tag=ig_a,nbt={inGround:0b},scores={ct1=2..30}] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:fire},Data:0,Time:1,Dropltem:0}

execute as @e[tag=mig,nbt={OnGround:1b}] run data merge entity @s {Marker:1b}

execute as @e[tag=ig_a,nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~-1 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @e[tag=ig_a,nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~ {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @e[tag=ig_a,nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~1 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}

execute as @e[tag=ig_a,tag=!mf_a,nbt={inGround:1b}] at @s run kill @s

execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~2 ~ ~0 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}

execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~1 ~ ~-1 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~1 ~ ~0 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~1 ~ ~1 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}

execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~-2 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~-1 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~ {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~1 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~ ~ ~2 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}

execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~-1 ~ ~-1 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~-1 ~ ~0 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~-1 ~ ~1 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}

execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run summon armor_stand ~-2 ~ ~0 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}

execute as @e[tag=mf_a,nbt={inGround:1b}] at @s run kill @s

execute as @e[tag=ig,scores={ct1=220..}] at @s run kill @s

execute as @e[tag=ig,scores={ct1=0..200}] at @s run execute as @a[distance=..1.5,predicate=library:islowlife] run effect give @s minecraft:fire_resistance 1 1

execute as @e[tag=ig,scores={ct1=0..200}] at @s run execute as @a[distance=..1.5] run tag @s add antiig

execute as @e[tag=mig,scores={ct1=220..}] at @s run kill @s

execute as @e[tag=mig,scores={ct1=0..200}] at @s run execute as @a[distance=..1.5,predicate=library:islowlife] run effect give @s minecraft:fire_resistance 1 1

execute as @e[tag=mig,scores={ct1=0..200}] at @s run execute as @a[distance=..1.5] run tag @s add antii


execute as @a[tag=antiig,predicate=library:islowlife,predicate=library:isfire] at @s run effect give @s minecraft:fire_resistance 1 1

execute as @a[tag=antiig,predicate=!library:isfire] at @s run tag @s remove antiig

execute as @a[scores={use_carrot_stick=1..,job=8}] at @s unless entity @e[distance=..10,tag=cr] unless block ^ ^0.5 ^5 air if block ^ ^1 ^5 air if block ^ ^2 ^5 air if block ^ ^3 ^5 air if block ^ ^4 ^5 air if block ^ ^5 ^5 air align y run clear @s minecraft:carrot_on_a_stick
execute as @a[scores={use_carrot_stick=1..,job=8}] at @s unless entity @e[distance=..10,tag=cr] unless block ^ ^0.5 ^5 air if block ^ ^1 ^5 air if block ^ ^2 ^5 air if block ^ ^3 ^5 air if block ^ ^4 ^5 air if block ^ ^5 ^5 air align y run scoreboard players set @s id1 1

execute as @a[scores={use_carrot_stick=1..,job=8}] at @s if entity @e[distance=..10,tag=cr] unless block ^ ^0.5 ^5 air if block ^ ^1 ^5 air if block ^ ^1 ^5 air align y run summon armor_stand ^ ^1 ^5 {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}
execute as @a[scores={use_carrot_stick=1..,job=8}] at @s unless entity @e[distance=..10,tag=cr] unless block ^ ^0.5 ^5 air if block ^ ^1 ^5 air if block ^ ^2 ^5 air if block ^ ^3 ^5 air if block ^ ^4 ^5 air if block ^ ^5 ^5 air align y run summon minecraft:falling_block ^ ^0.6 ^5 {Tags:["cr"],BlockState:{Name:campfire},Time:1,Invulnerable:1b,NoGravity:1b,Marker:1b}

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={job=8}] at @s unless entity @e[distance=..10,tag=cr] unless block ^ ^0.5 ^5 air if block ^ ^1 ^5 air if block ^ ^2 ^5 air if block ^ ^3 ^5 air if block ^ ^4 ^5 air if block ^ ^5 ^5 air align y run summon minecraft:area_effect_cloud ^ ^1 ^5 {Particle:campfire_cosy_smoke,Radius:0.5f,RadiusPerTick:0.3f}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={job=8}] at @s if entity @e[distance=..10,tag=cr] unless block ^ ^0.5 ^5 air if block ^ ^1 ^5 air if block ^ ^2 ^5 air if block ^ ^3 ^5 air if block ^ ^4 ^5 air if block ^ ^5 ^5 air align y run summon minecraft:area_effect_cloud ^ ^1 ^5 {Particle:flame,Radius:0.5f,RadiusPerTick:0.3f}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={job=8}] at @s align y run particle minecraft:end_rod ^ ^1 ^5

execute as @a[scores={use_carrot_stick=1..,job=8}] at @s store result score @e[distance=4..6,type=minecraft:falling_block] id5 run data get entity @s[scores={use_carrot_stick=1..,job=8}] UUID[0] 1
execute as @a[scores={use_carrot_stick=1..,job=8}] at @s store result score @e[distance=4..6,type=minecraft:falling_block] id2 run data get entity @s[scores={use_carrot_stick=1..,job=8}] UUID[1] 1
execute as @a[scores={use_carrot_stick=1..,job=8}] at @s store result score @e[distance=4..6,type=minecraft:falling_block] id3 run data get entity @s[scores={use_carrot_stick=1..,job=8}] UUID[2] 1
execute as @a[scores={use_carrot_stick=1..,job=8}] at @s store result score @e[distance=4..6,type=minecraft:falling_block] id4 run data get entity @s[scores={use_carrot_stick=1..,job=8}] UUID[3] 1
execute as @a[scores={use_carrot_stick=1..,job=8}] at @s store result score @s id5 run data get entity @e[distance=4..6,type=minecraft:falling_block,limit=1] UUID[0] 1
execute as @a[scores={use_carrot_stick=1..,job=8}] at @s store result score @s id2 run data get entity @e[distance=4..6,type=minecraft:falling_block,limit=1] UUID[1] 1
execute as @a[scores={use_carrot_stick=1..,job=8}] at @s store result score @s id3 run data get entity @e[distance=4..6,type=minecraft:falling_block,limit=1] UUID[2] 1
execute as @a[scores={use_carrot_stick=1..,job=8}] at @s store result score @s id4 run data get entity @e[distance=4..6,type=minecraft:falling_block,limit=1] UUID[3] 1


##execute as @a[scores={use_carrot_stick=1..,job=8}] at @s run data modify entity @e[tag=cr,limit=1] UUID set from entity @s UUID

scoreboard players add @a[scores={job=8,id1=1..}] id1 1

give @a[scores={job=8,id1=80..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"キャンプファイアセット"}'}} 1

scoreboard players set @a[scores={job=8,id1=80..}] id1 0

scoreboard players set @a[scores={use_carrot_stick=1..,job=8}] use_carrot_stick 0

##execute as @a at @s run execute as @e[tag=cr,distance=..1.1] at @s run summon creeper ~ ~ ~ {Tags:["cr_e"],Fuse:5,ExplosionRadius:1,ignited:1b,NoAI:1b,Invisible:1b,Marker:1b}

execute as @a at @s run execute as @e[tag=cr,distance=..1.1] at @s run summon minecraft:fireball ~ ~5 ~ {Tags:["cr_e"],Motion:[0.0d,-1.6d,-0.0d]}

execute as @a at @s run execute as @e[tag=cr,distance=..1.1] at @s run data modify entity @e[distance=5..9.5,tag=cr_e,limit=1] Owner set from entity @s UUID

execute as @e[tag=cr_e] unless score @a[scores={job=8},limit=1] id5 = @s id5 run execute store result score @s id5 run data get entity @s Owner[0]
execute as @e[tag=cr_e] unless score @a[scores={job=8},limit=1] id2 = @s id2 run execute store result score @s id2 run data get entity @s Owner[1]
execute as @e[tag=cr_e] unless score @a[scores={job=8},limit=1] id3 = @s id3 run execute store result score @s id3 run data get entity @s Owner[2]
execute as @e[tag=cr_e] unless score @a[scores={job=8},limit=1] id4 = @s id4 run execute store result score @s id4 run data get entity @s Owner[3]
execute as @e[tag=cr] at @s if score @a[scores={job=8},limit=1] id5 = @e[tag=cr_e,limit=1] id5 run execute store result entity @e[tag=cr_e,limit=1,distance=3..5.3] Owner[0] int 1 run scoreboard players get @s id5
execute as @e[tag=cr] at @s if score @a[scores={job=8},limit=1] id2 = @e[tag=cr_e,limit=1] id2 run execute store result entity @e[tag=cr_e,limit=1,distance=3..5.3] Owner[1] int 1 run scoreboard players get @s id2
execute as @e[tag=cr] at @s if score @a[scores={job=8},limit=1] id3 = @e[tag=cr_e,limit=1] id3 run execute store result entity @e[tag=cr_e,limit=1,distance=3..5.3] Owner[2] int 1 run scoreboard players get @s id3
execute as @e[tag=cr] at @s if score @a[scores={job=8},limit=1] id4 = @e[tag=cr_e,limit=1] id4 run execute store result entity @e[tag=cr_e,limit=1,distance=3..5.3] Owner[3] int 1 run scoreboard players get @s id4

##execute as @a at @s run execute as @e[tag=cr,distance=..2] at @s store result entity @e[tag=cr_e,limit=1] Owner[1] int 1 run scoreboard players get @s id5
##execute as @a at @s run execute as @e[tag=cr,distance=..2] at @s store result entity @e[tag=cr_e,limit=1] Owner[2] int 1 run scoreboard players get @s id2
##execute as @a at @s run execute as @e[tag=cr,distance=..2] at @s store result entity @e[tag=cr_e,limit=1] Owner[3] int 1 run scoreboard players get @s id3
##execute as @a at @s run execute as @e[tag=cr,distance=..2] at @s store result entity @e[tag=cr_e,limit=1] Owner[4] int 1 run scoreboard players get @s id4
##execute as @a at @s run execute as @e[tag=cr,distance=..1.1] at @s run data modify entity @e[distance=5..9.5,tag=cr_e,limit=1] Owner set from entity @s UUID
##execute as @e[tag=cr] at @s run tp @e[tag=cr_e,limit=1,sort=nearest] @a[distance=..2,limit=1,sort=nearest] 

execute as @e[tag=cr] at @s run execute as @a[distance=..1.1] at @s run scoreboard players set @s stun -22

execute as @a at @s run execute as @e[tag=cr,distance=..1.1] at @s run kill @s

##execute as @a at @s run execute as @e[tag=cr_e,distance=..5] at @s run execute as @e[tag=cr,distance=..5] at @s run kill @s

execute as @e[nbt={Item:{id:"minecraft:campfire"}}] at @s run summon armor_stand ~ ~ ~ {Tags:["ig"],Invulnerable:1b,Invisible:1b,Marker:1b}

execute as @e[tag=cr] at @s run summon minecraft:area_effect_cloud ~ ~5 ~ {Particle:smoke,Radius:0.1f,RadiusPerTick:0.1f}

kill @e[nbt={Item:{id:"minecraft:campfire"}}]
