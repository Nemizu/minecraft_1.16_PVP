scoreboard players add @a[predicate=library:uranai] uranai 1

scoreboard players set @a[predicate=!library:uranai] uranai 0

execute as @a[scores={uranai=60}] at @s run effect give @a[distance=10..,limit=1] minecraft:glowing 3 1

clear @a[scores={uranai=60}] minecraft:bone{display:{Name:'{"text":"占いの骨"}',Lore:['{"text":"なんか見える"}']}} 1

scoreboard players set @a[scores={uranai=60..}] uranai 0