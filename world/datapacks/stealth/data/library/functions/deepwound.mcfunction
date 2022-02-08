execute as @a[scores={deepwound=..-20}] at @s run effect give @s minecraft:unluck 1 1
scoreboard players add @a[scores={deepwound=..-1}] deepwound 1
execute as @a[scores={deepwound=..-1}] at @s run particle minecraft:landing_honey ~ ~ ~ 0.6 0.1 0.6 1 1 normal
execute as @a[scores={deepwound=..-1}] at @s run particle minecraft:dripping_lava ~ ~ ~ 0.1 0.1 0.1 3000000 1 normal
execute as @a[scores={deepwound=..-1},predicate=!main:sprinting] run scoreboard players add @s deepwound_st 1
execute as @a[scores={deepwound=..-1},predicate=main:sprinting] run scoreboard players set @s deepwound_st 0
execute as @a[scores={deepwound_st=40..},predicate=!library:poison] run effect give @s minecraft:poison 1 2
execute as @a[scores={deepwound=-1..}] run scoreboard players set @s deepwound_st 0
