#終了の処理
setblock 162 40 252 minecraft:air replace
schedule clear main:end_when
schedule clear main:end
scoreboard objectives setdisplay sidebar KD
execute if entity @r[scores={gameplay=1..}] run scoreboard players set @a death 0
team leave @a
gamemode creative @a
scoreboard players set @a gameplay 0
tellraw @a [{"text":"勝ったのは、"},{"selector":"@a[tag=Win]"},{"text":"！おめでとっ！"}]
title @a title {"text":"おしまぁぁぁい！","color":"white"}

tag @a[tag=Win] remove Win
execute as @e[tag=ax] run kill @s
execute as @e[tag=bx] run kill @s
execute as @e[tag=cx] run kill @s
execute as @e[tag=dx] run kill @s
execute as @e[tag=m_ax] run kill @s
execute as @e[tag=m_bx] run kill @s
execute as @e[tag=m_cx] run kill @s
execute as @e[tag=m_dx] run kill @s
execute as @e[tag=gt] run kill @s
execute as @e[tag=jt] run kill @s
execute as @e[tag=mt] run kill @s
execute as @e[tag=at] run kill @s
