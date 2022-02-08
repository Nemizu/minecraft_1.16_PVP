setblock 162 40 252 minecraft:water replace
summon minecraft:shulker 162 35 252 {NoGravity:1b,Invulnerable:1b,Tags:["object"],Silent:1b,PortalCooldown:20000,DeathLootTable:"empty",FallFlying:0b,NoAI:1b,Health:6f,AttachFace:0b,Color:15b,Attributes:[{Name:generic.maxHealth,Base:6}]}
team join object @e[tag=object]
effect give @e[type=minecraft:shulker] minecraft:glowing 10000
say シュルカーボックス復活ボタン出現！
title @a title {"text":"\" 噴水に注目 \"","color":"white"}
