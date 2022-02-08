execute as @a[scores={smoke=..-20}] at @s run effect give @s minecraft:unluck 1 0
scoreboard players add @a[scores={smoke=..-1}] smoke 1
execute as @a[scores={smoke=..-1}] at @s run particle minecraft:sneeze ~ ~ ~ 0.6 2 0.6 0.01 2 normal
execute as @a[scores={smoke=..-1}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.6 2 0.6 0.01 1 normal
execute as @a[scores={smoke=..-1},predicate=main:sprinting,predicate=!library:poison] at @s run effect give @s minecraft:poison 1 2
