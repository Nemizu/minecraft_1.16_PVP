scoreboard players add @a[scores={use_bow=1..,job=7}] use_bow 1
scoreboard players remove @a[scores={ct1=1..,job=7}] ct1 1

tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:music_disc_cat"}]},scores={job=7,sneakTime=1..,use_bow=1..,ct1=0}] add swap_s
execute at @a[tag=swap_s] run tag @e[type=arrow,distance=1..2] add swap
execute if entity @e[tag=swap] unless entity @e[type=minecraft:armor_stand,tag=swap_p] at @e[tag=swap,type=arrow] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Marker:true,Invulnerable:true,Tags:[swap_p],Invisible:true}
execute unless entity @a[tag=swap_tp] at @e[tag=swap,type=minecraft:arrow] run tp @e[type=minecraft:armor_stand,tag=swap_p] ^ ^ ^
execute unless entity @a[tag=!swap_s,tag=swap_tp] at @e[tag=swap_p] run tag @e[distance=..3,tag=!swap_s,scores={job=1..}] add swap_tp
execute if entity @a[tag=swap_tp] as @a[tag=swap_s] at @s run tp @e[tag=swap_p] ~ ~0.3 ~
execute if entity @a[tag=swap_tp] as @e[tag=swap_tp] at @s run tp @a[tag=swap_s] ~ ~0.3 ~ facing entity @s
execute if entity @a[tag=swap_tp] as @e[tag=swap_p] at @s run tp @e[tag=swap_tp] ~ ~0.3 ~ facing entity @s
execute if entity @a[tag=swap_tp] run kill @e[tag=swap_p]
execute if entity @a[tag=swap_tp] run kill @e[tag=swap,type=minecraft:arrow]
execute if entity @a[tag=swap_tp] as @a[tag=swap_s] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.75
execute if entity @a[tag=swap_tp] as @e[tag=swap_tp] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1.75
execute if entity @a[tag=swap_tp] run effect give @a[tag=swap_tp] minecraft:absorption 5 0
execute if entity @a[tag=swap_tp] run effect give @a[tag=swap_s] minecraft:absorption 5 0
execute if entity @a[tag=swap_tp] run scoreboard players set @a[tag=swap_s] ct1 200
execute if entity @a[tag=swap_tp] run tag @a[tag=swap_s] remove swap_s
tag @a[tag=swap_tp] remove swap_tp
give @a[scores={job=7,use_bow=20..}] minecraft:arrow 1
scoreboard players set @a[scores={use_bow=20..,job=7}] use_bow 0
tag @a[tag=swap_s,scores={job=7,use_bow=0}] remove swap_s
execute if entity @a[scores={job=7,use_bow=0}] run kill @e[type=minecraft:armor_stand,tag=swap_p]


