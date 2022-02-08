execute as @s run function library:attribute_reset

scoreboard players set @p job 7
replaceitem entity @p weapon.offhand minecraft:music_disc_cat{display:{Name:"\"swap\"",Lore:["オフハンドに持って使用する","しゃがんで矢を打つと","自分と相手の位置を入れ替える"]}} 1
give @p minecraft:bow{display:{Name:"\"bow\""},Unbreakable:1,Enchantments:[{id:power,lvl:1}]}
replaceitem entity @p armor.chest minecraft:chainmail_chestplate{Unbreakable:1,Enchantments:[{id:binding_curse,lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:10,Operation:0,UUIDLeast:451970,UUIDMost:145712,Slot:"chest"}]}
give @p arrow 1
replaceitem entity @p armor.feet minecraft:chainmail_boots{Enchantments:[{id:feather_falling,lvl:1024},{id:binding_curse,lvl:1}],display:{Name:"\"\""},Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.08,Operation:1,UUIDLeast:377462,UUIDMost:386522,Slot:"feet"}]} 1