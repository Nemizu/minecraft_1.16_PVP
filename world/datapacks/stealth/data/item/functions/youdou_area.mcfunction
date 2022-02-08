execute as @a[scores={use_snow=1..}] at @s run summon minecraft:armor_stand ^ ^ ^22 {Tags:["aaa"]}
scoreboard players set @e[tag=aaa] so 1
scoreboard players set @a use_snow 0
execute as @e[tag=aaa] at @s run playsound minecraft:block.shulker_box.open player @a ~ ~ ~ 0.6
execute as @a[tag=Force] at @s run tp @e[tag=a] ~ ~ ~ facing entity @e[scores={so=1..},team=!hunter,limit=1]
execute as @e[scores={so=1..},team=!hunter,limit=1] at @s run execute as @a[tag=Force] at @s run playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.2
kill @e[tag=aaa]
