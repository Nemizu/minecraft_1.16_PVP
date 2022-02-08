#終了判定の処理
scoreboard objectives setdisplay sidebar border
execute as @r[limit=1] if score @s border > @s KD run execute as @r[limit=1] if score @s border > @s KD run execute as @r[limit=1] if score @s border > @s KD run execute as @r[limit=1] if score @s border > @s KD run scoreboard players remove @a border 1
execute as @a if score @s border <= @s KD run tag @s add Win
execute as @a if entity @s[tag=Win] run schedule function main:end 0.1s
execute as @a if entity @s[tag=!Win] run schedule function main:end_when 0.2s
