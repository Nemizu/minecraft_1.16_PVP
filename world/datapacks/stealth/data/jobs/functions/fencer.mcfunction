clear @s

scoreboard players set @s job 1

execute as @s run function library:attribute_reset

attribute @s minecraft:generic.movement_speed base set 0.115

give @s minecraft:netherite_sword{Enchantments:[{id:sharpness,lvl:5}]}

replaceitem entity @s weapon.offhand minecraft:shield