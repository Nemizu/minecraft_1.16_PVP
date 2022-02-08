execute at @a[scores={use_tri=1,job=7}] run kill @e[distance=..4,limit=1,type=trident,sort=nearest]

clear @a[scores={use_tri=1,job=7}] trident 1

effect give @a[scores={use_tri=1,job=7}] levitation 1 35

effect clear @a[scores={use_tri=3,job=7}] levitation

scoreboard players add @a[scores={use_tri=1..,job=7}] use_tri 1

execute as @a[scores={use_tri=1..4,job=7}] at @s rotated ~ 0 run summon area_effect_cloud ^ ^-0.1 ^-0.2 {Passengers:[{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true},{id:"minecraft:slime",Silent:1b,DeathTime:19,Health:0,Tags:["wimd"],NoGravity:true}]}

execute as @a[scores={use_tri=150,job=7}] at @s run playsound minecraft:block.chain.hit master @s ~ ~ ~

give @a[scores={use_tri=150,job=7}] trident{CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-863295250,80363596,-1790776881,-63167674]}]} 1

scoreboard players set @a[scores={use_tri=150..,job=7}] use_tri 0