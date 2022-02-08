#ゲームが始まり、30秒後する処理
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1 0.1
effect give @a minecraft:conduit_power 1000 1 true
scoreboard players set @a gameplay 1
tellraw @a {"text":"\"げぇむすたぁと！\"","color":"white"}
title @a title {"text":"\"げぇむすたぁと！\"","color":"white"}
schedule function main:kd 1000s
schedule function main:end_when 1001s
schedule function main:2nd_game 500s
scoreboard players set @a border 200
kill @e[type=minecraft:shulker]


