clear @s

scoreboard players set @s job 8

scoreboard players set @s ct1 0

scoreboard players set @s ct2 0

scoreboard players set @s ct3 0

scoreboard players set @s id1 0

scoreboard players set @s id2 0

scoreboard players set @s id3 0

scoreboard players set @s id4 0

scoreboard players set @s id5 0

execute as @s run function library:attribute_reset

give @s bow{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:3s},{id:"minecraft:infinity",lvl:1s}]} 1

give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"キャンプファイアセット"}'}} 1

replaceitem entity @p inventory.9 arrow 1

