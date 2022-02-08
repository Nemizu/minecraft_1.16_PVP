clear @s

scoreboard players set @s job 6

execute as @s run function library:attribute_reset

attribute @s minecraft:generic.movement_speed base set 0.090

give @s minecraft:trident{display:{Name:"\"海流槍\"",Lore:["\"水中から回転しながら移動可能。\""]},Unbreakable:1,Enchantments:[{id:sharpness,lvl:2},{id:riptide,lvl:2}]} 1

give @s minecraft:heart_of_the_sea 2

give @s minecraft:splash_potion{display:{Name:"\"海流浄瓶\"",Lore:["海流の力の詰まった瓶"]},CustomPotionEffects:[{Id:1,Amplifier:1,Duration:60},{Id:13,Amplifier:0,Duration:80},{Id:30,Amplifier:0,Duration:1000}],CustomPotionColor:9238527} 1

give @s minecraft:splash_potion{display:{Name:"\"浮遊波力瓶\"",Lore:["\"波の押しあがる力がこもったポーション\""]},CustomPotionEffects:[{Id:18,Amplifier:0,Duration:200},{Id:25,Amplifier:4,Duration:40}],CustomPotionColor:11854546} 1

