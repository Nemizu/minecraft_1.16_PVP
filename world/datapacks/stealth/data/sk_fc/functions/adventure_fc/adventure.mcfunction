#「クリエイトウェポン」

execute as @a[scores={job=9},tag=SNEAK] at @s run particle minecraft:instant_effect ^ ^1 ^2 0.2 0 0.2 0 2 normal @s

tag @a[scores={job=9,gameplay=1..},predicate=main:sneaking,nbt={SelectedItem:{id:"minecraft:chest",tag:{display:{Name:"\"Create_Weapon\""}}}}] add SNEAK

execute as @a[scores={job=9},tag=SNEAK,tag=!Village] at @s run summon minecraft:villager ~ ~-5 ~ {CustomName:"\"create\"",NoGravity:1b,Invulnerable:true,Marker:true,NoAI:true,Silent:true,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}],Team:"Off_Collision",Tags:["Create_W"],DeathLootTable:"empty"}

tag @a[scores={job=9},tag=SNEAK,tag=!Village] add Village

execute as @a[scores={job=9,gameplay=1..},tag=SNEAK] at @s run tp @e[type=minecraft:villager,tag=Create_W,limit=1,sort=nearest] ~ ~ ~

tag @a[scores={job=9},predicate=!main:sneaking,tag=SNEAK] add sneak_Moment
tag @a[scores={job=9},tag=SNEAK,nbt=!{SelectedItem:{id:"minecraft:chest",tag:{display:{Name:"\"Create_Weapon\""}}}}] add sneak_Moment

tag @a[scores={job=9},predicate=!main:sneaking] remove SNEAK
tag @a[scores={job=9},nbt=!{SelectedItem:{id:"minecraft:chest",tag:{display:{Name:"\"Create_Weapon\""}}}}] remove SNEAK

execute as @a[scores={job=9,gameplay=1..},tag=sneak_Moment] at @s run tp @e[type=minecraft:villager,tag=Create_W,limit=1,sort=nearest] ~ 0 ~

execute as @a[scores={job=9},tag=sneak_Moment] at @s run kill @e[type=minecraft:villager,tag=Create_W,limit=1,sort=nearest]

tag @a[scores={job=9},tag=sneak_Moment] remove Village

tag @a[scores={job=9},tag=sneak_Moment] remove sneak_Moment


tag @a[scores={job=9,gameplay=1..,click_villager=1..,ct1=0},nbt={SelectedItem:{id:"minecraft:chest",tag:{display:{Name:"\"Create_Weapon\""}}}}] add CLICK

execute as @a[scores={job=9},tag=CLICK] at @s run execute positioned ^ ^1 ^2 run execute if block ~ ~ ~ air if block ~ ~1 ~ air run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Invulnerable:true,Marker:true,Silent:true,Invisible:true,Tags:["Create_Arm"]}

execute as @a[scores={job=9},tag=CLICK] at @s run execute positioned ^ ^1 ^2 run execute if block ~ ~ ~ air if block ~ ~1 ~ air run scoreboard players add @e[type=minecraft:armor_stand,tag=Create_Arm] ct1 1

execute as @a[scores={job=9},tag=CLICK] at @s run execute positioned ^ ^1 ^2 run execute if block ~ ~ ~ air if block ~ ~1 ~ air run clear @a[scores={job=9},tag=CLICK] chest{display:{Name:"\"Create_Weapon\""}}

execute as @a[scores={job=9},tag=CLICK] at @s run execute positioned ^ ^1 ^2 run execute if block ~ ~ ~ air if block ~ ~1 ~ air run scoreboard players set @a[scores={job=9},tag=CLICK] ct1 1

execute as @a[scores={job=9},tag=CLICK] at @s run execute positioned ^ ^1 ^2 run execute if block ~ ~ ~ air if block ~ ~1 ~ air run give @a[scores={job=9},tag=CLICK] ender_eye{display:{Name:"\"ct_Create_Weapon\""}} 60

execute as @a[scores={job=9},tag=CLICK] at @s run execute positioned ^ ^1 ^2 run execute if block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~ ~ minecraft:black_shulker_box{CustomName:"\"アイテムボックス\"",LootTable:"sk_fc:adventure_itembox"} keep

scoreboard players set @a[scores={job=9,click_villager=1..}] click_villager 0

tag @a[scores={job=9},tag=CLICK] remove CLICK


scoreboard players add @e[type=minecraft:armor_stand,tag=Create_Arm,scores={ct1=1..}] ct1 1

function sk_fc:adventure_fc/ct_create_weapon

execute as @e[type=minecraft:armor_stand,tag=Create_Arm,scores={ct1=200..}] at @s run fill ^ ^ ^ ^ ^ ^ air replace black_shulker_box

give @a[scores={job=9,ct1=1200..}] chest{display:{Name:"\"Create_Weapon\""}} 1

kill @e[type=minecraft:armor_stand,tag=Create_Arm,scores={ct1=200..}]

scoreboard players set @a[scores={job=9,ct1=1200..}] ct1 0

scoreboard players add @a[scores={job=9,ct1=1..}] ct1 1



#「ファストトラベル」

scoreboard players set @a[scores={job=9,gameplay=1..,open_shulker=1..,ct3=0},tag=FastTravel] ct3 1

scoreboard players add @a[scores={job=9,ct3=1..}] ct3 1

tag @a[scores={job=9,gameplay=1..,id1=1..},tag=!FastTravel] add FastTravel

effect give @a[scores={job=9,ct3=100},tag=FastTravel] speed 10 0

scoreboard players remove @a[scores={job=9,gameplay=1..,id1=1..}] id1 1

tag @a[scores={job=9,id1=..0},tag=FastTravel] remove FastTravel

scoreboard players set @a[scores={job=9,ct3=300..}] ct3 0





#「冒険のココロ」

scoreboard players add @a[scores={job=9,gameplay=1..,open_shulker=1..,ct2=..2}] ct2 1

clear @a[scores={job=9,gameplay=1..,open_shulker=1..}] lime_dye{display:{Name:"\"幸運のカケラ\""}} 1

scoreboard players set @a[scores={job=9,open_shulker=1..}] open_shulker 0

#scoreboard players add @a[scores={job=9,ct2=1..}] ct2 1

effect give @a[scores={job=9,gameplay=1..,ct2=0},tag=!Fortunate] luck 1000000 0

tag @a[scores={job=9,ct2=0},tag=!Fortunate] add Fortunate

effect clear @a[scores={job=9,ct2=3..},tag=Fortunate] luck

tag @a[scores={job=9,ct2=3..},tag=Fortunate] remove Fortunate

#scoreboard players set @a[scores={job=9,ct2=1800..}] ct2 0




