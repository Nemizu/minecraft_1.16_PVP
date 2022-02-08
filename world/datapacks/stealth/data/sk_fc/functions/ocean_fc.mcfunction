clear @a[scores={job=6,ct3=119..}] minecraft:trident

replaceitem entity @a[scores={job=6,ct3=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:trident",tag:{display:{Name:"\"海流槍(-投-使用可能)\"",Lore:["\"水中から回転しながら移動可能。\""]}}}]}] weapon.offhand minecraft:trident{display:{Name:"\"海流槍-投-\"",Lore:["\"槍を投げることができる\""]},Unbreakable:1,Enchantments:[{id:sharpness,lvl:10}]} 1

replaceitem entity @a[scores={job=6},nbt={SelectedItem:{id:"minecraft:trident",tag:{display:{Name:"\"海流槍-投-\"",Lore:["\"槍を投げることができる\""]}}}}] weapon.mainhand minecraft:trident{display:{Name:"\"海流槍(-投-使用可能)\"",Lore:["\"水中から回転しながら移動可能。\""]},Unbreakable:1,Enchantments:[{id:sharpness,lvl:2},{id:riptide,lvl:2}]} 1

clear @a[scores={job=6,ct3=12}] minecraft:trident

give @a[scores={job=6,ct3=12}] minecraft:trident{display:{Name:"\"海流槍(-投-使用不能)\"",Lore:["\"水中から回転しながら移動可能。\""]},Unbreakable:1,Enchantments:[{id:sharpness,lvl:2},{id:riptide,lvl:2}]} 1

give @a[scores={job=6,ct3=120..}] minecraft:trident{display:{Name:"\"海流槍(-投-使用可能)\"",Lore:["\"水中から回転しながら移動可能。\""]},Unbreakable:1,Enchantments:[{id:sharpness,lvl:2},{id:riptide,lvl:2}]} 1

give @a[scores={job=6,ct3=120..}] minecraft:heart_of_the_sea 2

scoreboard players add @a[scores={job=6,ct1=2..}] ct3 1

clear @a[scores={job=6,ct1=2..,ct3=8..9}] minecraft:heart_of_the_sea

scoreboard players set @a[scores={job=6,ct1=2..,ct3=12..}] ct1 0


scoreboard players set @a[scores={ct3=120..,job=6}] ct3 0

scoreboard players add @a[scores={ct3=1..120,job=6}] ct3 1


execute as @a[scores={job=6,sneakadd=1,ct3=0,ct1=..2},nbt={SelectedItem:{id:"minecraft:trident"}}] at @s run execute align xyz run summon armor_stand ~0.5 ~1.5 ~0.5 {Tags:["water"],Invisible:true,Marker:true,NoGravity:true}

execute as @e[tag=water] at @s run execute align xyz run execute if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:water replace

scoreboard players add @e[tag=water] ct2 1

scoreboard players add @a[scores={job=6,sneakadd=1,ct3=0},nbt={SelectedItem:{id:"minecraft:trident"}}] ct1 1

clear @a[scores={job=6,sneakadd=1},nbt={SelectedItem:{id:"minecraft:trident"}}] minecraft:heart_of_the_sea 1

scoreboard players set @a[scores={job=6},nbt={SelectedItem:{id:"minecraft:trident"}}] use_tri 0

clear @a[scores={job=6,use_tri=1..}] minecraft:heart_of_the_sea

clear @a[scores={job=6,use_tri=1..}] minecraft:trident

execute as @a[scores={job=6,sneakadd=150..,use_tri=1..}] at @s run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 1 0.1

scoreboard players set @a[scores={job=6,use_tri=1..}] ct3 80

scoreboard players set @a[scores={job=6,use_tri=1..}] ct1 0

scoreboard players set @a[scores={job=6,use_tri=1..}] use_tri 0

execute as @e[tag=water,scores={ct2=5..}] at @s run execute align xyz run execute if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air replace

kill @e[tag=water,scores={ct2=5..}]

scoreboard players add @e[tag=water,scores={ct2=1..}] water 1

execute as @e[tag=water,scores={ct2=..100}] at @s run execute align xyz run tp @s ~0.5 ~ ~0.5

execute as @e[tag=water,scores={ct2=..2}] at @s run effect give @p minecraft:slow_falling 2 2

execute as @e[tag=water,scores={ct2=3..5}] at @s run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 1 2

execute as @e[tag=water,scores={ct2=..2}] at @s run effect give @p minecraft:absorption 1 0

execute as @a[scores={job=6}] at @s run tag @e[type=minecraft:trident,distance=..2.2] add fg

execute as @e[tag=fg] at @s run particle minecraft:rain ~ ~ ~ 0.1 0.1 0.1 0.01 1 normal

execute as @e[tag=fg] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.01 1 normal

kill @e[tag=fg,nbt={inGround:true}]
