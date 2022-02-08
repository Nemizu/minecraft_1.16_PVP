#開始時の初期化
gamemode adventure @a
scoreboard players set @a kill_count 0
scoreboard players set @a death 0
scoreboard players set @a gameplay 0
scoreboard players set @a discovery -40
kill @e[type=minecraft:shulker]
effect clear @a

#開始の処理
execute as @a[scores={map=1}] run schedule function map:map1_shulker 1s
execute as @a[scores={map=2}] run schedule function map:map2_shulker 1s
execute as @a[scores={map=3}] run schedule function map:map3_shulker 1s

execute as @a[scores={map=1}] run schedule function map:map1_clear 1s
execute as @a[scores={map=2}] run schedule function map:map2_clear 1s
execute as @a[scores={map=3}] run schedule function map:map3_clear 1s

execute as @a[scores={map=1}] run schedule function map:map1_start 10s
execute as @a[scores={map=2}] run schedule function map:map2_start 10s
execute as @a[scores={map=3}] run schedule function map:map3_start 10s

scoreboard players operation @a map = @r[scores={map=1..}] map

effect give @a minecraft:instant_health 1 100
effect give @a minecraft:regeneration 30 100
effect give @a minecraft:luck 30
effect give @a minecraft:saturation 3 100
effect give @a minecraft:hunger 7 100
kill @e[type=item]
function main:clear_stage

schedule function main:hunter_enter_the_map 30s

scoreboard players set @a wait_count 30
function main:count

scoreboard objectives setdisplay sidebar kill_count
