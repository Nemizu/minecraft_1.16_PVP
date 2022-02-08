execute at @e[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"インスタント壁\""}}}}] run summon minecraft:area_effect_cloud ^ ^ ^2 {Particle:crit,Radius:0.8f,RadiusPerTick:0.8f}

execute at @a[scores={use_c=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"インスタント壁\""}}}}] run summon minecraft:shulker ^ ^1 ^2 {NoAI:true,Color:14,Silent:1,DeathLootTable:"empty",ActiveEffects:[{Id:20b,Amplifier:1b,Duration:9000,ShowParticles:false},{Id:10b,Amplifier:1b,Duration:9000,ShowParticles:false}],Health:2.5}

execute at @a[scores={use_c=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"インスタント壁\""}}}}] run summon minecraft:shulker ^1 ^ ^2 {NoAI:true,Color:14,Silent:1,DeathLootTable:"empty",ActiveEffects:[{Id:20b,Amplifier:1b,Duration:9000,ShowParticles:false},{Id:10b,Amplifier:1b,Duration:9000,ShowParticles:false}],Health:2.5}

execute at @a[scores={use_c=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"インスタント壁\""}}}}] run summon minecraft:shulker ^-1 ^ ^2 {NoAI:true,Color:14,Silent:1,DeathLootTable:"empty",ActiveEffects:[{Id:20b,Amplifier:1b,Duration:9000,ShowParticles:false},{Id:10b,Amplifier:1b,Duration:9000,ShowParticles:false}],Health:2.5}

execute at @a[scores={use_c=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"インスタント壁\""}}}}] run summon minecraft:shulker ^1 ^1 ^2 {NoAI:true,Color:14,Silent:1,DeathLootTable:"empty",ActiveEffects:[{Id:20b,Amplifier:1b,Duration:9000,ShowParticles:false},{Id:10b,Amplifier:1b,Duration:9000,ShowParticles:false}],Health:2.5}

execute at @a[scores={use_c=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"インスタント壁\""}}}}] run summon minecraft:shulker ^-1 ^1 ^2 {NoAI:true,Color:14,Silent:1,DeathLootTable:"empty",ActiveEffects:[{Id:20b,Amplifier:1b,Duration:9000,ShowParticles:false},{Id:10b,Amplifier:1b,Duration:9000,ShowParticles:false}],Health:2.5}

execute at @a[scores={use_c=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"インスタント壁\""}}}}] run summon minecraft:shulker ^ ^ ^2 {NoAI:true,Color:14,Silent:1,DeathLootTable:"empty",ActiveEffects:[{Id:20b,Amplifier:1b,Duration:9000,ShowParticles:false},{Id:10b,Amplifier:1b,Duration:9000,ShowParticles:false}],Health:2.5}

clear @a[scores={use_c=1..}] minecraft:carrot_on_a_stick 1

scoreboard players set @a[scores={use_c=1..}] use_c 0

