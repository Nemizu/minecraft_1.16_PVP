scoreboard players set @p job 9
clear @p
effect clear @p

execute as @s run function library:attribute_reset

function tan90_test:adventure_ex-clean

execute as @e[type=minecraft:mule,tag=EX_mule] if score @p[scores={job=9}] id1 = @s id2 run kill @s[type=mule,tag=EX_mule]

execute as @p at @s run summon minecraft:mule ~ ~-2 ~ {CustomName:"\"backpack\"",NoGravity:1b,ChestedHorse:true,Tame:1,Invulnerable:true,Invulnerable:true,Marker:true,NoAI:true,Silent:true,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}],Team:"Off_Collision",Tags:["EX_mule"],DeathLootTable:"empty"}

replaceitem entity @p hotbar.8 chest{display:{Name:"\"EX-Inventory\""}} 1

scoreboard players reset @p id1
scoreboard players add @a[scores={job=9}] id1 1
execute as @e[type=minecraft:mule,tag=EX_mule] at @s store result score @s id2 run scoreboard players get @p[scores={job=9}] id1


