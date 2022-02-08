scoreboard players set @s job 9
clear @s
effect clear @s

execute as @s run function library:attribute_reset

scoreboard players set @s id1 1200
scoreboard players set @s ct1 0
scoreboard players set @s ct2 0
scoreboard players set @s ct3 0
scoreboard players set @s click_villager 0
scoreboard players set @s open_shulker 0
tag @s remove Fortunate
tag @s remove FastTravel


give @s bow{Enchantments:[{id:"minecraft:power",lvl:2s}],Unbreakable:true} 1
give @s chest{display:{Name:"\"Create_Weapon\"",Lore:["\"スニークして右クリックで発動する。\"","\"目の前にアイテムボックスを出現させる。\""]}} 1
give @s lime_dye{display:{Name:"\"幸運のカケラ\"",Lore:["\"アイテムボックスを開くたびに消費する。\"","\"\"","\"「御守りにも使われる小さなカケラ。\"","\"所持しているだけで幸運が訪れるという。」\""]}} 3


