execute as @a[scores={remainblade=..-20}] at @s run effect give @s minecraft:unluck 1 0
scoreboard players add @a[scores={remainblade=..-1}] remainblade 1
execute as @a[scores={remainblade=..-1}] at @s run particle minecraft:crit ~ ~ ~ 0.6 2 0.6 0.01 2 normal
execute as @a[scores={remainblade=..-1},nbt={HurtTime:5s},predicate=!library:poison] at @s run effect give @s minecraft:poison 1 2
