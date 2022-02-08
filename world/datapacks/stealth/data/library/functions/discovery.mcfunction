execute as @e[scores={discovery=-40..-20}] at @s run effect give @s minecraft:unluck 1 0
scoreboard players add @e[scores={discovery=..100}] discovery 1
execute as @e[scores={discovery=-40..-1}] at @s run effect give @s minecraft:glowing 1 0 false
execute as @e[scores={discovery=-40..-39}] at @s run playsound minecraft:block.bell.use player @a ~ ~ ~ 1 0.1
