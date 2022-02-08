clear @s

scoreboard players set @s[scores={used_potion_sp=1..}] use_potion_sp 0

scoreboard players set @s ct2 0

scoreboard players set @s job 2

execute as @s run function library:attribute_reset

give @s bow{Enchantments:[{id:"minecraft:power",lvl:3s}]} 1

give @s minecraft:arrow 1

give @s minecraft:lingering_potion{display:{Name:"\"目つぶし爆弾\""},CustomPotionEffects:[{Id:15,Amplifier:0,Duration:80}],CustomPotionColor:12547303} 1
