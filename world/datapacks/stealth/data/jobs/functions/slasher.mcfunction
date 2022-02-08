clear @s

scoreboard players set @s job 4

execute as @s run function library:attribute_reset

attribute @s minecraft:generic.movement_speed base set 0.090

give @s minecraft:iron_sword{Enchantments:[{id:sharpness,lvl:3}]}

replaceitem entity @s weapon.offhand minecraft:shield{display:{Name:"{\"text\":\"突破の盾\"}",Lore:["突破するために作られた。"]},Damage:335,BlockEntityTag:{Base:11,Patterns:[{Color:14,Pattern:"mr"},{Color:16,Pattern:"flo"},{Color:14,Pattern:"sc"}]}} 1