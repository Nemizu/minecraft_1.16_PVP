#mainはtick更新！


#アイテムのリピート
function item:youdou_area
function item:instant_wall
effect give @a[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{display:{Name:"\"ジャンピングブーツ\""}}}]}] minecraft:jump_boost 1 1 true
effect give @a[nbt={HurtTime:5s,Inventory:[{Slot:103b,id:"minecraft:iron_helmet"},{Slot:102b,id:"minecraft:iron_chestplate"},{Slot:101b,id:"minecraft:iron_leggings"},{Slot:100b,id:"minecraft:iron_boots"}]}] minecraft:resistance 3 1
effect give @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"},{Slot:102b,id:"minecraft:golden_chestplate"},{Slot:101b,id:"minecraft:golden_leggings"}]}] minecraft:health_boost 1 0 true
effect give @a[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate"},{Slot:101b,id:"minecraft:chainmail_leggings"},{Slot:100b,id:"minecraft:chainmail_boots"}]}] minecraft:luck 1 0 true
effect give @a[predicate=library:chance10,predicate=library:chance50,predicate=library:chance10,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:leather_chestplate"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] minecraft:regeneration 4 0
effect give @a[predicate=library:chance10,predicate=library:chance50,predicate=library:chance10,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:leather_chestplate"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] minecraft:resistance 3 0
effect give @a[predicate=library:chance10,predicate=library:chance50,predicate=library:chance10,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:leather_chestplate"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] minecraft:absorption 2 0
effect give @a[predicate=library:chance10,predicate=library:chance50,predicate=library:chance10,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:leather_chestplate"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] minecraft:speed 5 0
effect give @a[predicate=library:chance10,predicate=library:chance50,predicate=library:chance10,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"},{Slot:102b,id:"minecraft:leather_chestplate"},{Slot:101b,id:"minecraft:leather_leggings"},{Slot:100b,id:"minecraft:leather_boots"}]}] minecraft:saturation 1 0


function item:uranaibone
function library:trashbox

#職のリピート
function sk_fc:fencer_fc
function sk_fc:archer_fc
function sk_fc:weakner_fc
function sk_fc:slasher_fc
function sk_fc:mechanic_fc
function sk_fc:ocean_fc
function sk_fc:ignition_fc
function sk_fc:fury_fc

function sk_fc:wizzard_fc
#↑何で1つに纏めなかったんですか？   - tan90

function sk_fc:adventure_fc
function sk_fc:alchemist_fc


#変調のリピート
function library:stun
function library:smoke
function library:noise
function library:deepwound
function library:discovery
function library:remainblade
function library:detection



#sneakaddに0入力
scoreboard players add @a[scores={sneakadd=1..}] sneakTime 1
execute as @a[scores={sneakadd=1..}] if score @s sneakadd < @s sneakTime run scoreboard players set @s sneakadd 0
execute as @a[scores={sneakTime=1..}] if score @s sneakadd < @s sneakTime run scoreboard players set @s sneakTime 0

#弓の威力調整
execute as @e[type=minecraft:arrow] run data merge entity @s {life:1200s}

#矢の返還
function library:return_arrow

#damage:4.0基準で弓調整
