scoreboard players set @a[scores={use_potion_cloud=1..,job=2}] ct1 1

scoreboard players set @a[scores={use_potion_cloud=1..,job=2}] use_potion_cloud 0

scoreboard players add @a[scores={ct1=1..,job=2}] ct1 1

give @a[scores={ct1=200..,job=2}] minecraft:lingering_potion{display:{Name:"\"目つぶし爆弾\""},CustomPotionEffects:[{Id:15,Amplifier:0,Duration:80}],CustomPotionColor:12547303} 1

scoreboard players set @a[scores={ct1=200..,job=2}] ct1 0

effect give @a[scores={job=2,sneakadd=1..,ct2=0},nbt={OnGround:false}] minecraft:speed 3 4

execute as @a[scores={job=2,sneakadd=1..,ct2=0},nbt={OnGround:false}] at @s run playsound minecraft:item.trident.riptide_1 master @s ^ ^ ^5 0.3 1.3

scoreboard players set @a[scores={job=2,ct2=0,sneakadd=1..},nbt={OnGround:false}] ct2 1

scoreboard players add @a[scores={ct2=1..,job=2}] ct2 1

execute as @a[scores={ct2=300..,job=2}] at @s run playsound minecraft:block.brewing_stand.brew master @s

scoreboard players set @a[scores={ct2=300..,job=2}] ct2 0

give @a[scores={use_bow=1..,job=2}] minecraft:arrow 1

scoreboard players set @a[scores={use_bow=1..,job=2}] use_bow 0