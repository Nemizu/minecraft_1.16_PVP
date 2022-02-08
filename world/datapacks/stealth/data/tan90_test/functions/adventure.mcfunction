execute as @a[scores={job=9},nbt=!{Inventory:[{id:"minecraft:chest",tag:{display:{Name:"\"EX-Inventory\""}}}]}] run replaceitem entity @s hotbar.8 chest{display:{Name:"\"EX-Inventory\""}} 1

tag @a[scores={job=9},predicate=main:sneaking,nbt={SelectedItem:{id:"minecraft:chest",tag:{display:{Name:"\"EX-Inventory\""}}}}] add SNEAK

execute if entity @a[scores={job=9},tag=SNEAK] as @e[type=minecraft:mule,tag=EX_mule] if score @p[scores={job=9},tag=SNEAK] id1 = @s id2 run execute store result score @s id3 run scoreboard players get @p[scores={job=9},tag=SNEAK] id1

execute as @e[type=mule,tag=EX_mule] at @s run execute at @p[scores={job=9},tag=SNEAK] run tp @s ~ ~ ~
tag @a[scores={job=9,},predicate=!main:sneaking] remove SNEAK

execute unless entity @a[scores={job=9},tag=SNEAK] as @e[type=mule,tag=EX_mule,scores={id3=1}] run scoreboard players set @s id3 0

execute as @a[scores={job=9,id1=0},tag=!SNEAK,] at @s run tp @e[type=minecraft:mule,tag=EX_mule] ~ ~7 ~

execute if entity @a[scores={job=9},tag=!SNEAK] as @e[type=minecraft:mule,tag=EX_mule] if score @p[scores={job=9},tag=!SNEAK] id1 = @s id2 run execute at @p[scores={job=9},tag=!SNEAK] run tp @s ~ ~7 ~

execute as @a[scores={job=9}] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:chest"}},distance=..8]


