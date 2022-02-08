execute as @a[scores={noise=..-20}] at @s run effect give @s minecraft:unluck 1 0
scoreboard players add @a[scores={noise=..-1}] noise 1
execute as @a[scores={noise=..-1}] at @s run playsound minecraft:ambient.underwater.loop.additions.ultra_rare player @s ~ ~ ~ 0.02 1
execute as @a[scores={noise=-12..-10}] at @s run execute as @e[type=minecraft:armor_stand,distance=..24] at @s run playsound minecraft:block.stone.step player @a[scores={noise=..-1}] ~ ~ ~ 0.2 1 0.01
execute as @a[scores={noise=-22..-20}] at @s run execute as @e[type=minecraft:armor_stand,distance=..24] at @s run playsound minecraft:block.stone.step player @a[scores={noise=..-1}] ~ ~ ~ 0.2 1 0.01
execute as @a[scores={noise=-92..-90}] at @s run execute as @e[type=minecraft:armor_stand,distance=..24] at @s run playsound minecraft:block.stone.step player @a[scores={noise=..-1}] ~ ~ ~ 0.2 1 0.01
execute as @a[scores={noise=-128..-125}] at @s run execute as @e[type=minecraft:armor_stand,distance=..24] at @s run playsound minecraft:block.stone.step player @a[scores={noise=..-1}] ~ ~ ~ 0.2 1 0.01
execute as @a[scores={noise=-18..-15}] at @s run execute as @e[type=minecraft:armor_stand,distance=..24] at @s run playsound minecraft:block.stone.step player @a[scores={noise=..-1}] ~ ~ ~ 0.2 1 0.01
execute as @a[scores={noise=-32..-28}] at @s run execute as @e[type=minecraft:armor_stand,distance=..24] at @s run playsound minecraft:block.stone.step player @a[scores={noise=..-1}] ~ ~ ~ 0.2 1 0.01
execute as @a[scores={noise=-52..-46}] at @s run execute as @e[type=minecraft:armor_stand,distance=..24] at @s run playsound minecraft:block.stone.step player @a[scores={noise=..-1}] ~ ~ ~ 0.2 1 0.01
execute as @a[scores={noise=-118..-115}] at @s run execute as @e[type=minecraft:armor_stand,distance=..24] at @s run playsound minecraft:block.stone.step player @a[scores={noise=..-1}] ~ ~ ~ 0.2 1 0.01
