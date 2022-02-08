#’†ŠÔƒQ[ƒ€ŠJn‚Ìˆ—
title @a title {"text":"\" 2nd GAME \"","color":"white"}
execute as @a[scores={map=1}] run schedule function map:map1_clear 1s
execute as @a[scores={map=2}] run schedule function map:map2_clear 1s
execute as @a[scores={map=3}] run schedule function map:map3_clear 1s

execute as @a[scores={map=1}] run schedule function map:map1_2nd 3s
execute as @a[scores={map=2}] run schedule function map:map2_start 3s
execute as @a[scores={map=3}] run schedule function map:map3_2nd 3s

scoreboard players set @a gameplay 2

