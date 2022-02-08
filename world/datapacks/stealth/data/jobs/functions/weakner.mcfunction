clear @s

scoreboard players set @s job 3

scoreboard players set @s ct1 0

scoreboard players set @s ct2 2

scoreboard players set @s ct3 0

scoreboard players set @s id1 0

scoreboard players set @s id2 0

scoreboard players set @s id3 0

scoreboard players set @s id4 2

scoreboard players set @s id5 0

execute as @s run function library:attribute_reset

give @s bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:3s},{id:"minecraft:infinity",lvl:1s}]} 1

give @s minecraft:barrel 2

give @s minecraft:slime_block 2

give @s minecraft:anvil 1

give @s minecraft:jukebox 1

replaceitem entity @p inventory.9 arrow 1

execute as @e[tag=ax] run kill @s

execute as @e[tag=bx] run kill @s

execute as @e[tag=cx] run kill @s

execute as @e[tag=dx] run kill @s

execute as @e[tag=m_ax] run kill @s

execute as @e[tag=m_bx] run kill @s

execute as @e[tag=m_cx] run kill @s

execute as @e[tag=m_dx] run kill @s

execute as @e[tag=gt] run kill @s

execute as @e[tag=jt] run kill @s

execute as @e[tag=mt] run kill @s

execute as @e[tag=at] run kill @s
