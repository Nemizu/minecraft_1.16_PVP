#2K/D算出
scoreboard players set @a 2 2
execute as @a at @s run scoreboard players operation @s Kcarry = @s kill_count
execute as @a at @s run scoreboard players operation @s Kcarry *= @s 2
execute as @a at @s run scoreboard players operation @s Kcarry *= @s 2
execute as @a at @s run scoreboard players operation @s Kcarry *= @s 2

execute as @a at @s run scoreboard players operation @s Dcarry = @s death
execute as @a at @s run scoreboard players operation @s Dcarry += @s 2
execute as @a at @s run scoreboard players operation @s Kcarry /= @s Dcarry
execute as @a at @s run scoreboard players operation @s KD = @s Kcarry
