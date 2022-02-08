#execute as @a[gamemode=adventure,nbt=!{Inventory:[{Slot:17b,id:"minecraft:black_stained_glass_pane"}]}] run clear @s minecraft:black_stained_glass_pane 10
replaceitem entity @a inventory.8 minecraft:black_stained_glass_pane
clear @a[gamemode=adventure] glass_bottle 1
clear @a[gamemode=adventure] bowl 1
