execute as @a[scores={detection=..-20}] at @s run effect give @s minecraft:hero_of_the_village 1 0
scoreboard players add @a[scores={detection=..600}] detection 1
execute as @a[scores={detection=..-1}] at @s run execute as @e[distance=1..40] at @s run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0.1 0.1 0.1 3000000 1 normal @a[scores={detection=..-1}]
execute as @a[scores={detection=..-1}] at @s run execute as @e[distance=2..25,scores={discovery=100..}] at @s run scoreboard players set @s discovery -40
