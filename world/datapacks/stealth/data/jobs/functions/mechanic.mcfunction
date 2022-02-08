clear @s

execute as @s run function library:attribute_reset

scoreboard players set @s[scores={use_dirtystick=1..}] 0

scoreboard players set @s job 5

scoreboard players set @s use_xbow 0

give @s minecraft:crossbow{display:{Name:'{"text":"ショットガン"}'},Enchantments:[{id:"minecraft:multishot",lvl:1s}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b},{id:"minecraft:arrow",Count:1b}],Charged:1b} 1

give @p stick{display:{Name:'{"text":"レンチ"}'},Enchantments:[{id:"minecraft:knockback",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.01,Operation:0,UUID:[I;153381791,-1824043163,-1856214023,164000718],Slot:"mainhand"}],CustomModelData:2929} 1

give @s minecraft:warped_fungus_on_a_stick{display:{Name:'{"text":"セントリータロット"}'}} 1

give @s minecraft:carrot_on_a_stick{display:{Name:'{"text":"スティムドローン"}'}} 1