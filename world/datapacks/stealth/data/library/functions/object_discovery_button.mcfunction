execute as @p run execute as @s[scores={detection=600..}] run say @s got a detective effect!
execute as @p run execute as @s[scores={detection=600..}] run scoreboard players set @p detection -150
execute as @p run execute as @s[scores={detection=-90..600}] run tell @s You are still waiting for this CT.
