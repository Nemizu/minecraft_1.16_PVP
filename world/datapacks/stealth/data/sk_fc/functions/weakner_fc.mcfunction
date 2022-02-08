#ウィークナーの喜び
execute as @a[scores={job=3}] at @s run execute if entity @a[distance=2.5..,predicate=library:unluck_effects] run effect give @s minecraft:speed 1 0

#樽投射
execute as @a[scores={job=3,drop_barrel=1..}] at @s run kill @e[nbt={Item:{id:"minecraft:barrel"}},distance=..3]

execute as @a[scores={job=3,drop_barrel=1..}] at @s run scoreboard players remove @s ct2 1

execute as @a[scores={job=3,drop_barrel=1..,ct2=1}] at @s run scoreboard players set @s ct3 1

execute as @a[scores={job=3,drop_barrel=1..}] at @s run clear @s minecraft:barrel

execute as @a[scores={job=3,drop_barrel=1..}] at @s run summon armor_stand ^ ^1 ^ {Tags:["ax"],Invulnerable:true,Invisible:1b}

execute as @e[tag=m_ax] at @s run particle minecraft:totem_of_undying

execute as @a[scores={job=3,drop_barrel=1..}] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoBasePlate:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[181f,0f,0f],RightLeg:[360f,0f,0f]},Tags:["m_ax"]}

execute as @a[scores={job=3,drop_barrel=1..}] at @s run scoreboard players add @e[tag=ax,distance=..4] ct2 1

execute as @a[scores={job=3,drop_barrel=1..}] at @s run scoreboard players add @e[tag=m_ax,distance=..4] ct2 1

scoreboard players set @a[scores={job=3,drop_barrel=1..}] drop_barrel 500

#樽CT
execute as @a[scores={job=3,ct3=1..}] at @s run scoreboard players add @s ct3 1

execute as @a[scores={job=3,ct3=60..,ct2=1..}] at @s run give @s minecraft:barrel 1

execute as @a[scores={job=3,ct3=60..}] at @s run scoreboard players set @s ct3 0

execute as @a[scores={job=3,ct1=0,ct2=..1}] at @s run scoreboard players add @s ct1 1

execute as @a[scores={job=3,ct1=1..}] at @s run scoreboard players add @s ct1 1

execute as @a[scores={job=3,ct1=500..}] at @s run give @s minecraft:barrel 1

execute as @a[scores={job=3,ct1=500..,ct2=..1}] at @s run scoreboard players add @s ct2 1

execute as @a[scores={job=3,ct1=500..}] at @s run scoreboard players set @s ct1 0

#樽投射　発動後処理
execute as @a[scores={drop_barrel=500,job=3}] at @s run tp @e[tag=ax,limit=1,sort=nearest] ^ ^1 ^-1 ~ ~

scoreboard players set @a[scores={job=3,drop_barrel=1..}] drop_barrel 0

execute as @e[type=armor_stand,tag=ax] at @s run tp @s ^ ^ ^0.9 ~ ~

execute as @e[type=armor_stand,tag=ax] at @s run tp @e[type=armor_stand,tag=m_ax,limit=1,sort=nearest] ^ ^ ^-1

execute as @e[type=armor_stand,tag=m_ax] at @s run tp @e[type=armor_stand,tag=m_ax,limit=1,sort=nearest] ~ ~ ~ ~60 ~60

execute as @e[tag=ax] at @s if block ~ ~ ~ air run scoreboard players add @e[tag=ax] ct2 1

scoreboard players add @e[tag=m_ax] ct2 1

execute as @e[tag=ax] at @s if score @s ct2 < @e[tag=m_ax,sort=nearest,limit=1] ct2 run scoreboard players set @s ct2 60

execute as @e[tag=ax,scores={ct2=60..}] at @s run execute as @e[tag=m_ax,sort=nearest,limit=1,scores={ct2=3..}] at @s align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:barrel",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[181f,0f,0f],RightLeg:[360f,0f,0f]},Tags:["gt"]}

execute as @e[tag=ax,scores={ct2=60..}] at @s run scoreboard players set @e[tag=gt,distance=..4.6] ct3 10

execute as @e[tag=ax,scores={ct2=60..}] at @s run kill @e[tag=m_ax,sort=nearest,limit=1,scores={ct2=3..}]

execute as @e[tag=ax,scores={ct2=60..}] at @s run playsound minecraft:block.wood.break master @a ~ ~ ~ 1 0.2

execute as @e[tag=ax,scores={ct2=60..}] at @s run playsound minecraft:item.bucket.fill_lava master @a ~ ~ ~ 1 0.1

execute as @e[tag=ax,scores={ct2=60..}] at @s run kill @s

execute as @e[tag=gt,scores={ct3=10}] at @s if block ~ ~ ~ air run scoreboard players set @s ct3 0

execute as @e[tag=gt,scores={ct3=10}] at @s run tp @s ~ ~1 ~

execute as @e[tag=gt] at @s if entity @a[distance=..4.6,limit=1] run scoreboard players add @s ct1 2

execute as @e[tag=gt,scores={ct1=..2}] at @s run execute if entity @a[distance=..4.6,limit=1] run scoreboard players set @s discovery -30

execute as @e[tag=gt,scores={ct1=7..8}] at @s run playsound minecraft:block.soul_sand.fall ambient @a ~ ~ ~ 1 0.1

execute as @e[tag=gt,scores={ct1=2..}] at @s run particle minecraft:sneeze ~ ~-1 ~ 2 2 2 0.0001 2 normal

execute as @e[tag=gt,scores={ct1=2..}] at @s run particle minecraft:campfire_cosy_smoke ~ ~-2 ~ 2 2 2 0.0001 1 normal

execute as @e[tag=gt,scores={ct1=60..}] at @s run scoreboard players set @a[distance=..4.6] smoke -60

execute as @e[tag=gt,scores={ct1=1..}] at @s run scoreboard players add @s ct1 1

execute as @e[tag=gt,scores={ct1=400..}] at @s run kill @s

#金床投射
execute as @a[scores={job=3,drop_anvil=1..}] at @s run kill @e[nbt={Item:{id:"minecraft:anvil"}},distance=..3]

execute as @a[scores={job=3,drop_anvil=1..}] at @s run clear @s minecraft:anvil

execute as @a[scores={job=3,drop_anvil=1..}] at @s run scoreboard players set @s id2 1

execute as @a[scores={job=3,drop_anvil=1..}] at @s run summon armor_stand ^ ^1 ^ {Tags:["dx"],Marker:1b,Invulnerable:true,Invisible:1b}

execute as @e[tag=m_dx] at @s run particle minecraft:smoke

execute as @a[scores={job=3,drop_anvil=1..}] at @s run summon armor_stand ~ ~ ~ {Tags:["m_dx"],Invulnerable:1b,NoBasePlate:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:anvil",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[181f,0f,0f],RightLeg:[360f,0f,0f]}}

execute as @a[scores={job=3,drop_anvil=1..}] at @s run scoreboard players add @e[tag=dx,distance=..4] ct2 1

execute as @a[scores={job=3,drop_anvil=1..}] at @s run scoreboard players add @e[tag=m_dx,distance=..4] ct2 1

scoreboard players set @a[scores={job=3,drop_anvil=1..}] drop_anvil 500

#金床CT
execute as @a[scores={job=3,id2=1..}] at @s run scoreboard players add @s id2 1

execute as @a[scores={job=3,id2=1800..}] at @s run give @s minecraft:anvil 1

execute as @a[scores={job=3,id2=1800..}] at @s run scoreboard players set @s id2 0
#金床投射　発動後処理
execute as @a[scores={drop_anvil=500,job=3}] at @s run tp @e[tag=dx,limit=1,sort=nearest] ^ ^1 ^-1 ~ ~

scoreboard players set @a[scores={job=3,drop_anvil=1..}] drop_anvil 0

execute as @e[type=armor_stand,tag=dx] at @s run tp @s ^ ^ ^0.4 ~ ~

execute as @e[type=armor_stand,tag=dx] at @s run tp @e[type=armor_stand,tag=m_dx,limit=1,sort=nearest] ^ ^ ^-1

execute as @e[type=armor_stand,tag=m_dx] at @s run tp @e[type=armor_stand,tag=m_dx,limit=1,sort=nearest] ~ ~ ~ ~60 ~60

execute as @e[tag=dx] at @s if block ~ ~ ~ air run scoreboard players add @e[tag=dx] ct2 1

scoreboard players add @e[tag=m_dx] ct2 1

execute as @e[tag=dx] at @s if score @s ct2 < @e[tag=m_dx,sort=nearest,limit=1] ct2 run scoreboard players set @s ct2 60

execute as @e[tag=dx,scores={ct2=60..}] at @s run execute as @e[tag=m_dx,sort=nearest,limit=1,scores={ct2=3..}] at @s align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:anvil",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Pose:{Head:[181f,0f,0f],RightLeg:[360f,0f,0f]},Tags:["at"]}

execute as @e[tag=dx,scores={ct2=60..}] at @s run scoreboard players set @e[tag=at,distance=..4.6] ct3 10

execute as @e[tag=dx,scores={ct2=60..}] at @s run kill @e[tag=m_dx,sort=nearest,limit=1,scores={ct2=3..}]

execute as @e[tag=dx,scores={ct2=60..}] at @s run playsound minecraft:block.wood.break master @a ~ ~ ~ 1 0.2

execute as @e[tag=dx,scores={ct2=60..}] at @s run playsound minecraft:item.bucket.fill_lava master @a ~ ~ ~ 1 0.1

execute as @e[tag=dx,scores={ct2=60..}] at @s run kill @s

execute as @e[tag=at,scores={ct3=10}] at @s if block ~ ~ ~ air run scoreboard players set @s ct3 0

execute as @e[tag=at,scores={ct3=10}] at @s run tp @s ~ ~1 ~

execute as @e[tag=at,scores={ct1=1..}] at @s run particle minecraft:smoke ~ ~-1 ~ 2 2 2 0.0001 2 normal

execute as @e[tag=at] at @s if entity @a[distance=..4.6,limit=1] run scoreboard players add @s ct1 1

execute as @e[tag=at,scores={ct1=..2}] at @s run execute if entity @a[distance=..4.6,limit=1] run scoreboard players set @s discovery -30

execute as @e[tag=at,scores={ct1=7..8}] at @s run playsound minecraft:block.anvil.break ambient @a ~ ~ ~ 1 0.1

execute as @e[tag=at,scores={ct1=1..}] at @s run scoreboard players add @s ct1 1

execute as @e[tag=at,scores={ct1=40..}] at @s run scoreboard players set @a[distance=..4.6] stun -40

execute as @e[tag=at,scores={ct1=40..}] at @s run kill @s

#ゲーム開始時のリセット
#execute as @a[scores={job=3,gameplay=0}] run scoreboard players set @s ct1 1

#execute as @a[scores={job=3,gameplay=0}] run scoreboard players set @s ct2 0

#execute as @a[scores={job=3,gameplay=0}] run scoreboard players set @s ct3 0

#execute as @a[scores={job=3,gameplay=0}] run scoreboard players set @s id1 1

#execute as @a[scores={job=3,gameplay=0}] run scoreboard players set @s id2 1

#execute as @a[scores={job=3,gameplay=0}] run scoreboard players set @s id3 1

#execute as @a[scores={job=3,gameplay=0}] run scoreboard players set @s id4 0

#execute as @a[scores={job=3,gameplay=0}] run scoreboard players set @s id5 0

#execute as @a[scores={job=3,gameplay=0}] run clear @s minecraft:barrel

#execute as @a[scores={job=3,gameplay=0}] run clear @s minecraft:slime_block

#execute as @a[scores={job=3,gameplay=0}] run clear @s minecraft:anvil

#execute as @a[scores={job=3,gameplay=0}] run clear @s minecraft:jukebox
