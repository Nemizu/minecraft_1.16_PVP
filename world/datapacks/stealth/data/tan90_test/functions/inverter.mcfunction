execute as @a[scores={job=8}] at @s run execute if entity @e[type=minecraft:ender_pearl,distance=1..2] run tag @s add Use_Ender
execute as @a[scores={job=8}] at @s run kill @e[type=minecraft:ender_pearl,distance=1..2]


execute as @a[tag=Iron_Ender,scores={job=8}] run replaceitem entity @s hotbar.8 gold_ingot{display:{Name:"\"「斬」\""},Enchantments:[{}]} 6
tag @a[scores={job=8},tag=Iron_Ender] add Gold_Ender
clear @a[scores={job=8},tag=Iron_Ender] minecraft:blaze_rod
clear @a[scores={job=8},tag=Iron_Ender] minecraft:emerald
scoreboard players set @a[scores={job=8},tag=Iron_Ender] ct1 1
tag @a[scores={job=8},tag=Gold_Ender] remove Iron_Ender
execute as @a[tag=Gold_Ender,scores={job=8},nbt=!{Inventory:[{id:"minecraft:gold_ingot"}]}] run tag @s add Iron_Cool
execute as @a[tag=Iron_Cool,tag=Gold_Ender,scores={job=8}] run replaceitem entity @s hotbar.8 minecraft:brick{display:{Name:"\"「斬」\""},Enchantments:[{}]} 35
effect clear @a[tag=!Stick_Ender,tag=!Gapple_Ender,tag=Iron_Cool,tag=Gold_Ender,scores={job=8}] minecraft:strength
effect clear @a[tag=!Stick_Ender,tag=!Gapple_Ender,tag=Iron_Cool,tag=Gold_Ender,scores={job=8}] minecraft:slowness
effect clear @a[tag=!Stick_Ender,tag=!Gapple_Ender,tag=Iron_Cool,tag=Gold_Ender,scores={job=8}] minecraft:haste
tag @a[tag=Iron_Cool,scores={job=8}] remove Gold_Ender
execute as @a[tag=Iron_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:brick"}]}] run replaceitem entity @s hotbar.8 minecraft:iron_ingot{display:{Name:"\"「斬」\""},Enchantments:[{}]}
scoreboard players set @a[tag=Iron_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:brick"}]}] ct1 0
execute as @a[tag=Iron_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:brick"}]}] run tag @a[tag=Iron_Cool] remove Iron_Cool

execute as @a[tag=Feather_Ender,scores={job=8}] run replaceitem entity @s hotbar.7 blaze_rod{display:{Name:"\"「飛」\""},Enchantments:[{}]} 10
tag @a[scores={job=8},tag=Feather_Ender] add Stick_Ender
clear @a[scores={job=8},tag=Feather_Ender] minecraft:gold_ingot
clear @a[scores={job=8},tag=Feather_Ender] minecraft:emerald
replaceitem entity @a[scores={job=8},tag=Feather_Ender] armor.feet minecraft:chainmail_boots{Enchantments:[{id:feather_falling,lvl:64},{id:binding_curse,lvl:1}],display:{Name:"\"\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.08,Operation:1,UUIDLeast:377462,UUIDMost:386522,Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:16,Operation:0,UUIDLeast:451970,UUIDMost:145712,Slot:"feet"}]} 1
scoreboard players set @a[scores={job=8},tag=Feather_Ender] ct2 1
tag @a[scores={job=8},tag=Stick_Ender] remove Feather_Ender
execute as @a[tag=Stick_Ender,scores={job=8},nbt=!{Inventory:[{id:"minecraft:blaze_rod"}]}] run tag @s add Feather_Cool
execute as @a[tag=Feather_Cool,tag=Stick_Ender,scores={job=8}] run replaceitem entity @s hotbar.7 minecraft:stick{display:{Name:"\"「飛」\""},Enchantments:[{}]} 25
replaceitem entity @a[tag=!Gold_Ender,tag=!Gapple_Ender,tag=Feather_Cool,tag=Stick_Ender,scores={job=8}] armor.feet minecraft:chainmail_boots{Enchantments:[{id:feather_falling,lvl:64},{id:binding_curse,lvl:1}],display:{Name:"\"\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.08,Operation:1,UUIDLeast:377462,UUIDMost:386522,Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:22,Operation:0,UUIDLeast:451970,UUIDMost:145712,Slot:"feet"}]} 1
effect clear @a[tag=!Gold_Ender,tag=!Gapple_Ender,tag=Feather_Cool,tag=Stick_Ender,scores={job=8}] minecraft:jump_boost
effect clear @a[tag=!Gold_Ender,tag=!Gapple_Ender,tag=Feather_Cool,tag=Stick_Ender,scores={job=8}] minecraft:speed
effect clear @a[tag=!Gold_Ender,tag=!Gapple_Ender,tag=Feather_Cool,tag=Stick_Ender,scores={job=8}] minecraft:weakness
tag @a[tag=Feather_Cool,scores={job=8}] remove Stick_Ender
execute as @a[tag=Feather_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:stick"}]}] run replaceitem entity @s hotbar.7 minecraft:feather{display:{Name:"\"「飛」\""},Enchantments:[{}]}
scoreboard players set @a[tag=Feather_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:stick"}]}] ct2 0
execute as @a[tag=Feather_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:stick"}]}] run tag @a[tag=Feather_Cool] remove Feather_Cool

execute as @a[tag=Arc_Ender,scores={job=8}] run replaceitem entity @s hotbar.6 emerald{display:{Name:"\"「護」\""},Enchantments:[{}]} 8
tag @a[scores={job=8},tag=Arc_Ender] add Gapple_Ender
clear @a[scores={job=8},tag=Arc_Ender] minecraft:gold_ingot
clear @a[scores={job=8},tag=Arc_Ender] minecraft:blaze_rod
replaceitem entity @a[scores={job=8},tag=Arc_Ender] hotbar.0 minecraft:golden_sword{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.4,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"}],display:{Name:"\"\""},Unbreakable:1,Enchantments:[{id:knockback,lvl:1}]}
scoreboard players set @a[scores={job=8},tag=Arc_Ender] ct3 1
tag @a[scores={job=8},tag=Gapple_Ender] remove Arc_Ender
execute as @a[tag=Gapple_Ender,scores={job=8},nbt=!{Inventory:[{id:"minecraft:emerald"}]}] run tag @s add Baster_Cool
execute as @a[tag=Baster_Cool,tag=Gapple_Ender,scores={job=8}] run replaceitem entity @s hotbar.6 minecraft:coal{display:{Name:"\"「護」\""},Enchantments:[{}]} 30
replaceitem entity @a[tag=!Stick_Ender,tag=!Gold_Ender,tag=Baster_Cool,tag=Gapple_Ender,scores={job=8}] hotbar.0 minecraft:iron_sword{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.4,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"}],display:{Name:"\"\""},Unbreakable:1,Enchantments:[{id:sweeping,lvl:1}]}
effect clear @a[tag=!Stick_Ender,tag=!Gold_Ender,tag=Baster_Cool,tag=Gapple_Ender,scores={job=8}] minecraft:weakness
effect clear @a[tag=!Stick_Ender,tag=!Gold_Ender,tag=Baster_Cool,tag=Gapple_Ender,scores={job=8}] minecraft:resistance
effect clear @a[tag=!Stick_Ender,tag=!Gold_Ender,tag=Baster_Cool,tag=Gapple_Ender,scores={job=8}] minecraft:slowness
tag @a[tag=Baster_Cool,scores={job=8}] remove Gapple_Ender
execute as @a[tag=Baster_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:coal"}]}] run replaceitem entity @s hotbar.6 minecraft:diamond{display:{Name:"\"「護」\""},Enchantments:[{}]}
scoreboard players set @a[tag=Baster_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:coal"}]}] ct3 0
execute as @a[tag=Baster_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:coal"}]}] run tag @a[tag=Baster_Cool] remove Baster_Cool


tag @a[scores={job=8},tag=Use_Ender,nbt={SelectedItem:{id:"minecraft:iron_ingot",tag:{display:{Name:"\"「斬」\""}}}}] add Iron_Ender
effect clear @a[tag=Iron_Ender,scores={job=8}] minecraft:jump_boost
effect clear @a[tag=Iron_Ender,scores={job=8}] minecraft:speed
effect clear @a[tag=Iron_Ender,scores={job=8}] minecraft:weakness
effect clear @a[tag=Iron_Ender,scores={job=8}] minecraft:resistance
effect clear @a[tag=Iron_Ender,scores={job=8}] minecraft:strength
effect clear @a[tag=Iron_Ender,scores={job=8}] minecraft:slowness
effect clear @a[tag=Iron_Ender,scores={job=8}] minecraft:haste
replaceitem entity @a[tag=Iron_Ender,scores={job=8}] hotbar.0 minecraft:iron_sword{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.4,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"}],display:{Name:"\"\""},Unbreakable:1,Enchantments:[{id:sweeping,lvl:1}]}
replaceitem entity @a[tag=!Gold_Ender,tag=!Gapple_Ender,tag=Feather_Cool,tag=Stick_Ender,scores={job=8}] armor.feet minecraft:chainmail_boots{Enchantments:[{id:feather_falling,lvl:64},{id:binding_curse,lvl:1}],display:{Name:"\"\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.08,Operation:1,UUIDLeast:377462,UUIDMost:386522,Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:22,Operation:0,UUIDLeast:451970,UUIDMost:145712,Slot:"feet"}]} 1

effect give @a[tag=Iron_Ender,scores={job=8}] minecraft:strength 1000000 1 false
effect give @a[tag=Iron_Ender,scores={job=8}] minecraft:slowness 1000000 0 false
effect give @a[tag=Iron_Ender,scores={job=8}] minecraft:haste 1000000 0 false

tag @a[scores={job=8},tag=Use_Ender,nbt={SelectedItem:{id:"minecraft:feather",tag:{display:{Name:"\"「飛」\""}}}}] add Feather_Ender
effect clear @a[tag=Feather_Ender,scores={job=8}] minecraft:jump_boost
effect clear @a[tag=Feather_Ender,scores={job=8}] minecraft:speed
effect clear @a[tag=Feather_Ender,scores={job=8}] minecraft:weakness
effect clear @a[tag=Feather_Ender,scores={job=8}] minecraft:resistance
effect clear @a[tag=Feather_Ender,scores={job=8}] minecraft:strength
effect clear @a[tag=Feather_Ender,scores={job=8}] minecraft:slowness
effect clear @a[tag=Feather_Ender,scores={job=8}] minecraft:haste
replaceitem entity @a[tag=Feather_Ender,scores={job=8}] hotbar.0 minecraft:iron_sword{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.4,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"}],display:{Name:"\"\""},Unbreakable:1,Enchantments:[{id:sweeping,lvl:1}]}

effect give @a[tag=Feather_Ender,scores={job=8}] minecraft:jump_boost 1000000 1 false
effect give @a[tag=Feather_Ender,scores={job=8}] minecraft:speed 1000000 0 false
effect give @a[tag=Feather_Ender,scores={job=8}] minecraft:weakness 1000000 2 false

tag @a[scores={job=8},tag=Use_Ender,nbt={SelectedItem:{id:"minecraft:diamond",tag:{display:{Name:"\"「護」\""}}}}] add Arc_Ender
effect clear @a[tag=Arc_Ender,scores={job=8}] minecraft:jump_boost
effect clear @a[tag=Arc_Ender,scores={job=8}] minecraft:speed
effect clear @a[tag=Arc_Ender,scores={job=8}] minecraft:weakness
effect clear @a[tag=Arc_Ender,scores={job=8}] minecraft:resistance
effect clear @a[tag=Arc_Ender,scores={job=8}] minecraft:strength
effect clear @a[tag=Arc_Ender,scores={job=8}] minecraft:slowness
effect clear @a[tag=Arc_Ender,scores={job=8}] minecraft:haste
replaceitem entity @a[tag=Arc_Ender,scores={job=8}] armor.feet minecraft:chainmail_boots{Enchantments:[{id:feather_falling,lvl:64},{id:binding_curse,lvl:1}],display:{Name:"\"\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.08,Operation:1,UUIDLeast:377462,UUIDMost:386522,Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:22,Operation:0,UUIDLeast:451970,UUIDMost:145712,Slot:"feet"}]} 1

effect give @a[tag=Arc_Ender,scores={job=8}] minecraft:weakness 1000000 1 false
effect give @a[tag=Arc_Ender,scores={job=8}] minecraft:resistance 1000000 1 false
effect give @a[tag=Arc_Ender,scores={job=8}] minecraft:slowness 1000000 1 false

tag @a[tag=Use_Ender,scores={job=8}] remove Use_Ender

execute as @a[tag=!Iron_Ender,tag=!Gold_Ender,tag=!Iron_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:iron_ingot"}]}] run replaceitem entity @s hotbar.8 minecraft:iron_ingot{display:{Name:"\"「斬」\""},Enchantments:[{}]}
execute as @a[tag=!Feather_Ender,tag=!Stick_Ender,tag=!Feather_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:feather"}]}] run replaceitem entity @s hotbar.7 minecraft:feather{display:{Name:"\"「飛」\""},Enchantments:[{}]}
execute as @a[tag=!Arc_Ender,tag=!Gapple_Ender,tag=!Baster_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:diamond"}]}] run replaceitem entity @s hotbar.6 minecraft:diamond{display:{Name:"\"「護」\""},Enchantments:[{}]}
execute as @a[scores={job=8},nbt=!{Inventory:[{id:"minecraft:ender_pearl"}]}] run replaceitem entity @s weapon.offhand minecraft:ender_pearl{display:{Name:"\"\""},Enchantments:[{}]}

replaceitem entity @a[tag=!Feather_Ender,tag=!Stick_Ender,tag=!Feather_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:feather"}]}] armor.feet minecraft:chainmail_boots{Enchantments:[{id:feather_falling,lvl:64},{id:binding_curse,lvl:1}],display:{Name:"\"\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.08,Operation:1,UUIDLeast:377462,UUIDMost:386522,Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:22,Operation:0,UUIDLeast:451970,UUIDMost:145712,Slot:"feet"}]} 1
replaceitem entity @a[tag=!Arc_Ender,tag=!Gapple_Ender,tag=!Baster_Cool,scores={job=8},nbt=!{Inventory:[{id:"minecraft:diamond"}]}] hotbar.0 minecraft:iron_sword{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.4,Operation:0,UUIDLeast:348437,UUIDMost:39435,Slot:"mainhand"}],display:{Name:"\"\""},Unbreakable:1,Enchantments:[{id:sweeping,lvl:1}]}

scoreboard players add @a[scores={job=8,ct1=1..}] ct1 1
scoreboard players add @a[scores={job=8,ct2=1..}] ct2 1
scoreboard players add @a[scores={job=8,ct3=1..}] ct3 1

clear @a[tag=Iron_Cool,scores={job=8,ct1=20..}] brick 1
clear @a[tag=Gold_Ender,scores={job=8,ct1=20..}] gold_ingot 1
clear @a[tag=Feather_Cool,scores={job=8,ct2=20..}] minecraft:stick 1
clear @a[tag=Stick_Ender,scores={job=8,ct2=20..}] minecraft:blaze_rod 1
clear @a[tag=Baster_Cool,scores={job=8,ct3=20..}] minecraft:coal 1
clear @a[tag=Gapple_Ender,scores={job=8,ct3=20..}] minecraft:emerald 1

scoreboard players set @a[scores={job=8,ct1=20..}] ct1 1
scoreboard players set @a[scores={job=8,ct2=20..}] ct2 1
scoreboard players set @a[scores={job=8,ct3=20..}] ct3 1
