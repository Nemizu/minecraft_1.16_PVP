scoreboard players set @p job 6
clear @p
effect clear @p

execute as @s run function library:attribute_reset

replaceitem entity @p hotbar.8 minecraft:iron_ingot{display:{Name:"\"「斬」\""},Enchantments:[{}]}
replaceitem entity @p hotbar.7 minecraft:feather{display:{Name:"\"「飛」\""},Enchantments:[{}]}
replaceitem entity @p hotbar.6 minecraft:diamond{display:{Name:"\"「護」\""},Enchantments:[{}]}
replaceitem entity @p weapon.offhand minecraft:ender_pearl{display:{Name:"\"\""},Enchantments:[{}]}
tag @p remove Iron_Cool
tag @p remove Gold_Ender
tag @p remove Iron_Ender
tag @p remove Feather_Cool
tag @p remove Stick_Ender
tag @p remove Feather_Ender
tag @p remove Baster_Cool
tag @p remove Gapple_Ender
tag @p remove Arc_Ender

replaceitem entity @p hotbar.0 minecraft:iron_sword{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.4,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"}],display:{Name:"\"\""},Unbreakable:1,Enchantments:[{id:sweeping,lvl:1}]}
replaceitem entity @p armor.feet minecraft:chainmail_boots{Enchantments:[{id:feather_falling,lvl:64},{id:binding_curse,lvl:1}],display:{Name:"\"\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.08,Operation:1,UUIDLeast:377462,UUIDMost:386522,Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:22,Operation:0,UUIDLeast:451970,UUIDMost:145712,Slot:"feet"}]} 1