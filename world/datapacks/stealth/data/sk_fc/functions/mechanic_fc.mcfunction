#召喚
execute as @a[scores={use_dirtystick=1..,job=5}] at @s run summon minecraft:skeleton ~ ~ ~ {Tags:["meka"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:punch,lvl:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:4b,Amplifier:2b,Duration:30},{Id:24b,Amplifier:1b,Duration:80}]}}],Attributes:[{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.01},{Name:generic.max_health,Base:30}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:3s}]}},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:dispenser",Count:1b}],Health:30f}
execute as @a[scores={use_dirtystick=1..,job=5}] at @s store result score @e[distance=..2,type=minecraft:skeleton,tag=meka] id1 run data get entity @s[scores={use_dirtystick=1..,job=5}] UUID[0] 1
execute as @a[scores={use_dirtystick=1..,job=5}] at @s store result score @e[distance=..2,type=minecraft:skeleton] id2 run data get entity @s[scores={use_dirtystick=1..,job=5}] UUID[1] 1
execute as @a[scores={use_dirtystick=1..,job=5}] at @s store result score @e[distance=..2,type=minecraft:skeleton] id3 run data get entity @s[scores={use_dirtystick=1..,job=5}] UUID[2] 1
execute as @a[scores={use_dirtystick=1..,job=5}] at @s store result score @e[distance=..2,type=minecraft:skeleton] id4 run data get entity @s[scores={use_dirtystick=1..,job=5}] UUID[3] 1
execute as @a[scores={use_dirtystick=1..,job=5}] at @s store result score @s id1 run data get entity @e[distance=..2,type=minecraft:skeleton,limit=1] UUID[0] 1
execute as @a[scores={use_dirtystick=1..,job=5}] at @s store result score @s id2 run data get entity @e[distance=..2,type=minecraft:skeleton,limit=1] UUID[1] 1
execute as @a[scores={use_dirtystick=1..,job=5}] at @s store result score @s id3 run data get entity @e[distance=..2,type=minecraft:skeleton,limit=1] UUID[2] 1
execute as @a[scores={use_dirtystick=1..,job=5}] at @s store result score @s id4 run data get entity @e[distance=..2,type=minecraft:skeleton,limit=1] UUID[3] 1
clear @a[scores={use_dirtystick=1..,job=5}] minecraft:warped_fungus_on_a_stick 1
give @a[scores={use_dirtystick=1..,job=5}] minecraft:ender_pearl 3

#ct関係
scoreboard players set @a[scores={use_dirtystick=1..,job=5}] ct1 1
execute as @e[scores={use_dirtystick=1..,job=5}] at @s run scoreboard players add @e[distance=..2,type=minecraft:skeleton,tag=meka] ct1 1
scoreboard players set @a[scores={use_dirtystick=1..,job=5}] use_dirtystick 0
scoreboard players add @a[scores={ct1=1..,job=5}] ct1 1
scoreboard players add @e[scores={ct1=1..},tag=meka,type=minecraft:skeleton] ct1 1
clear @a[scores={ct1=1000,job=5}] minecraft:ender_pearl 5
give @a[scores={ct1=1000,job=5}] minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"セントリータロット"}'}} 1
kill @e[scores={ct1=1000..},type=minecraft:skeleton,tag=meka]

scoreboard players set @a[scores={ct1=1000..,job=5}] ct1 0
#↑job番号指定の記載を忘れないで下さい他の人が困ります   - tan90


#UUID付与系
execute as @e[type=minecraft:skeleton] at @s run tag @e[type=minecraft:arrow,distance=..3] add mekarw 
execute as @e[type=minecraft:arrow,tag=mekarw] unless score @a[scores={job=5},limit=1] id1 = @s id1 run execute store result score @s id1 run data get entity @s Owner[0]
execute as @e[type=minecraft:arrow,tag=mekarw] unless score @a[scores={job=5},limit=1] id2 = @s id2 run execute store result score @s id2 run data get entity @s Owner[1]
execute as @e[type=minecraft:arrow,tag=mekarw] unless score @a[scores={job=5},limit=1] id3 = @s id3 run execute store result score @s id3 run data get entity @s Owner[2]
execute as @e[type=minecraft:arrow,tag=mekarw] unless score @a[scores={job=5},limit=1] id4 = @s id4 run execute store result score @s id4 run data get entity @s Owner[3]
execute as @e[type=minecraft:skeleton,tag=meka] at @s if score @a[scores={job=5},limit=1] id1 = @e[type=minecraft:arrow,tag=mekarw,limit=1] id1 run execute store result entity @e[distance=..3,limit=1,type=minecraft:arrow] Owner[0] int 1 run scoreboard players get @s id1
execute as @e[type=minecraft:skeleton,tag=meka] at @s if score @a[scores={job=5},limit=1] id2 = @e[type=minecraft:arrow,tag=mekarw,limit=1] id2 run execute store result entity @e[distance=..3,limit=1,type=minecraft:arrow] Owner[1] int 1 run scoreboard players get @s id2
execute as @e[type=minecraft:skeleton,tag=meka] at @s if score @a[scores={job=5},limit=1] id3 = @e[type=minecraft:arrow,tag=mekarw,limit=1] id3 run execute store result entity @e[distance=..3,limit=1,type=minecraft:arrow] Owner[2] int 1 run scoreboard players get @s id3
execute as @e[type=minecraft:skeleton,tag=meka] at @s if score @a[scores={job=5},limit=1] id4 = @e[type=minecraft:arrow,tag=mekarw,limit=1] id4 run execute store result entity @e[distance=..3,limit=1,type=minecraft:arrow] Owner[3] int 1 run scoreboard players get @s id4
execute as @e[scores={use_pearl=1..,job=5}] at @s store result entity @e[type=minecraft:ender_pearl,limit=1,distance=..3] Owner[0] int 1 run scoreboard players get @s id1
execute as @e[scores={use_pearl=1..,job=5}] at @s store result entity @e[type=minecraft:ender_pearl,limit=1,distance=..3] Owner[1] int 1 run scoreboard players get @s id2
execute as @e[scores={use_pearl=1..,job=5}] at @s store result entity @e[type=minecraft:ender_pearl,limit=1,distance=..3] Owner[2] int 1 run scoreboard players get @s id3
execute as @e[scores={use_pearl=1..,job=5}] at @s store result entity @e[type=minecraft:ender_pearl,limit=1,distance=..3] Owner[3] int 1 run scoreboard players get @s id4

#その他のタレット関係
execute as @a[scores={job=5}] at @s run execute if score @s id1 = @e[distance=..2.8,tag=mekarw,limit=1] id1 run execute if score @s id2 = @e[distance=..2.8,tag=mekarw,limit=1] id2 run execute if score @s id3 = @e[distance=..2.8,tag=mekarw,limit=1] id3 run execute if score @s id4 = @e[distance=..2.8,tag=mekarw,limit=1] id4 run kill @e[distance=..2.8,tag=mekarw]
effect give @e[tag=meka,scores={ct1=900..}] minecraft:glowing 1 1

#ここからビーコン
execute as @a[scores={use_carrot_stick=1..,job=5}] at @s run summon armor_stand ~ ~-0.75 ~ {Invisible:1b,Tags:["beacon"],HandItems:[{id:"minecraft:beacon",Count:1b,},{id:"minecraft:beacon",Count:1b}],Pose:{Head:[181f,0f,0f],LeftArm:[181f,277f,289f],RightArm:[181f,84f,68f]},ArmorItems:[{},{},{},{id:"minecraft:beacon",Count:1b}]}
execute as @a[scores={use_carrot_stick=1..,job=5}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"ambient_entity_effect",Color:5752831,Radius:5f,Duration:500,Effects:[{Id:8b,Amplifier:3b,Duration:40},{Id:11b,Amplifier:0b,Duration:40},{Id:1b,Amplifier:0b,Duration:20},]}
execute at @e[tag=beacon,type=minecraft:armor_stand] run tp @e[tag=beacon,type=minecraft:armor_stand] ~ ~ ~ ~30 ~
clear @a[scores={use_carrot_stick=1..,job=5}] minecraft:carrot_on_a_stick 10
scoreboard players set @a[scores={use_carrot_stick=1..,job=5}] ct2 1
execute at @a[scores={use_carrot_stick=1..,job=5}] run scoreboard players set @e[distance=..2,tag=beacon] ct1 1
scoreboard players add @a[scores={job=5,ct2=1..}] ct2 1
scoreboard players add @e[scores={ct1=1..},tag=beacon] ct1 1
kill @e[scores={ct1=500..,},tag=beacon]
give @a[scores={job=5,ct2=500..}] minecraft:carrot_on_a_stick{display:{Name:'{"text":"スティムドローン"}'}} 1
scoreboard players set @a[scores={job=5,ct2=500..}] ct2 0
scoreboard players set @a[scores={use_carrot_stick=1..,job=5}] use_carrot_stick 0
execute as @e[tag=beacon] at @s run scoreboard players add @a[distance=..5,scores={job=5,use_xbow=1..},predicate=library:hasgun5,predicate=!main:sneaking] use_xbow 1

#ここからショットガン
execute as @a[scores={job=5,use_xbow=1}] at @s run tag @e[distance=..3,type=minecraft:arrow] add shotgun
execute as @a[scores={job=5,use_xbow=1}] at @s run scoreboard players set @e[distance=..3,tag=shotgun] ct1 1
scoreboard players add @e[tag=shotgun] ct1 1
data merge entity @e[tag=shotgun,scores={ct1=..9},limit=1] {damage:3.0,crit:false}
#execute at @e[tag=shotgun,scores={ct1=4}] run summon arrow ~ ~ ~ {Tags:["amo"],damage:5.0d}
#execute at @e[tag=shotgun,scores={ct1=6}] run summon arrow ~ ~ ~ {Tags:["amo"],damage:5.0d}
#execute as @e[tag=shotgun] at @s store result entity @e[tag=amo,limit=1] Motion[0] double 1 run data get entity @s Motion[0] 1
#execute as @e[tag=shotgun] at @s store result entity @e[tag=amo,limit=1] Motion[1] double 1 run data get entity @s Motion[1] 1
#execute as @e[tag=shotgun] at @s store result entity @e[tag=amo,limit=1] Motion[2] double 1 run data get entity @s Motion[2] 1
#data merge entity @e[tag=shotgun,scores={ct1=5},limit=1] {damage:5.0}
#data merge entity @e[tag=shotgun,scores={ct1=10},limit=1] {damage:4.0}
#data merge entity @e[tag=shotgun,scores={ct1=15},limit=1] {damage:3.0}
#data merge entity @e[tag=shotgun,scores={ct1=20},limit=1] {damage:2.0}
kill @e[tag=shotgun,scores={ct1=10..},limit=1]
scoreboard players add @e[predicate=library:hasgun5,predicate=main:sneaking] use_xbow 1
scoreboard players add @a[scores={job=5,use_xbow=1..},predicate=library:chance10] use_xbow 1
clear @a[scores={use_xbow=40..,job=5}] minecraft:crossbow 1
give @a[scores={use_xbow=40..,job=5}] minecraft:crossbow{display:{Name:'{"text":"ショットガン"}'},Enchantments:[{id:"minecraft:multishot",lvl:1s}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b}],Charged:1b} 1
scoreboard players set @a[scores={use_xbow=40..,job=5}] use_xbow 0
#effect give @a[scores={use_xbow=1..50},predicate=library:hasgun5] minecraft:slowness 1 1
#effect clear @a[scores={use_xbow=1..50,job=5},predicate=!library:hasgun5] minecraft:slowness
#レンチ
execute as @e[scores={job=5},nbt={SelectedItem:{id:"minecraft:stick"}}] at @s run scoreboard players set @e[tag=meka,distance=..5,nbt={HurtTime:5s}] ct1 1