execute as @a[scores={stun=..-20}] at @s run effect give @s minecraft:unluck 1 0
scoreboard players add @a[scores={stun=..50}] stun 1
execute as @a[scores={stun=-39}] at @s run playsound minecraft:block.ancient_debris.place player @s ~ ~ ~ 1 0.1
execute as @a[scores={stun=..-20}] at @s run effect give @s minecraft:slowness 1 1 false
execute as @a[scores={stun=..-20}] at @s run effect give @s minecraft:blindness 2 2 false
execute as @a[scores={stun=-1}] at @s run effect clear @s minecraft:blindness
execute as @a[scores={stun=..-20}] at @s run effect give @s minecraft:jump_boost 1 200 true
execute as @a[scores={stun=..-20}] at @s run effect give @s minecraft:mining_fatigue 1 200 true
