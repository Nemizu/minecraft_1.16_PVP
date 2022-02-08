clear @s

execute as @s run function library:attribute_reset

scoreboard players set @s job 7

scoreboard players set @s use_snowball 0

scoreboard players set @s use_carrot_stick 0

scoreboard players set @s use_tri 0

scoreboard players set @s use_bow 0

attribute @s generic.movement_speed base set 0.0999999999

give @s minecraft:snowball{CustomModelData:2929} 1

give @s carrot_on_a_stick{CustomModelData:2} 1

give @s trident{CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-863295250,80363596,-1790776881,-63167674]}]} 1

give @s bow{CustomModelData:1,Enchantments:[{id:"minecraft:punch",lvl:1s},{id:"minecraft:infinity",lvl:1s}]}