execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}},scores={job=7}] at @s rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^0.2 ^2 {Particle:crit,Radius:0.8f,RadiusPerTick:0.8f}
execute as @a[scores={use_carrot_stick=1,job=7}] at @s rotated ~ 0 run summon minecraft:shulker ^ ^1 ^2 {NoAI:true,Color:12,Silent:1,DeathLootTable:"empty",Tags:["wall"],Health:3,DeathTime:19s}
execute as @a[scores={use_carrot_stick=1,job=7}] at @s rotated ~ 0 run summon minecraft:shulker ^1 ^ ^2 {NoAI:true,Color:12,Silent:1,DeathLootTable:"empty",Tags:["wall"],Health:3,DeathTime:19s}
execute as @a[scores={use_carrot_stick=1,job=7}] at @s rotated ~ 0 run summon minecraft:shulker ^-1 ^ ^2 {NoAI:true,Color:12,Silent:1,DeathLootTable:"empty",Tags:["wall"],Health:3,DeathTime:19s}
execute as @a[scores={use_carrot_stick=1,job=7}] at @s rotated ~ 0 run summon minecraft:shulker ^1 ^1 ^2 {NoAI:true,Color:12,Silent:1,DeathLootTable:"empty",Tags:["wall"],Health:3,DeathTime:19s}
execute as @a[scores={use_carrot_stick=1,job=7}] at @s rotated ~ 0 run summon minecraft:shulker ^-1 ^1 ^2 {NoAI:true,Color:12,Silent:1,DeathLootTable:"empty",Tags:["wall"],Health:3,DeathTime:19s}
execute as @a[scores={use_carrot_stick=1,job=7}] at @s rotated ~ 0 run summon minecraft:shulker ^ ^ ^2 {NoAI:true,Color:12,Silent:1,DeathLootTable:"empty",Tags:["wall"],Health:3,DeathTime:19s}
execute as @a[scores={use_carrot_stick=1,job=7},predicate=library:sneaktime20to50] at @s rotated ~ 0 run summon minecraft:shulker ^-2 ^ ^2 {NoAI:true,Color:12,Silent:1,DeathLootTable:"empty",Tags:["wall"],Health:3,DeathTime:19s}
execute as @a[scores={use_carrot_stick=1,job=7},predicate=library:sneaktime20to50] at @s rotated ~ 0 run summon minecraft:shulker ^-2 ^1 ^2 {NoAI:true,Color:12,Silent:1,DeathLootTable:"empty",Tags:["wall"],Health:3,DeathTime:19s}
execute as @a[scores={use_carrot_stick=1,job=7},predicate=library:sneaktime20to50] at @s rotated ~ 0 run summon minecraft:shulker ^2 ^ ^2 {NoAI:true,Color:12,Silent:1,DeathLootTable:"empty",Tags:["wall"],Health:3,DeathTime:19s}
execute as @a[scores={use_carrot_stick=1,job=7},predicate=library:sneaktime20to50] at @s rotated ~ 0 run summon minecraft:shulker ^2 ^1 ^2 {NoAI:true,Color:12,Silent:1,DeathLootTable:"empty",Tags:["wall"],Health:3,DeathTime:19s}
clear @a[scores={use_carrot_stick=1}] minecraft:carrot_on_a_stick 1
scoreboard players add @e[tag=wall] ct1 1
scoreboard players add @a[scores={job=7,use_carrot_stick=1..}] use_carrot_stick 1
give @a[scores={use_carrot_stick=220..,job=7}] carrot_on_a_stick{CustomModelData:2} 1
kill @e[scores={ct1=200..},tag=wall]
scoreboard players set @a[scores={use_carrot_stick=220..}] use_carrot_stick 0