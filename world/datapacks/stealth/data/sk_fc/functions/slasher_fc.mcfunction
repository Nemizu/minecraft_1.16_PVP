effect give @a[scores={sneakTime=20..25,job=4}] minecraft:speed 6 0

effect give @a[scores={broken_shield=1..,job=4}] minecraft:speed 1 1

scoreboard players set @a[scores={broken_shield=1..,job=4}] ct1 -300

effect give @a[scores={ct1=..-299,job=4}] minecraft:strength 15 0

scoreboard players add @a[scores={ct1=..-1,job=4}] ct1 1

replaceitem entity @a[scores={ct1=-2..-1,job=4}] weapon.offhand minecraft:shield{display:{Name:"{\"text\":\"突破の盾\"}",Lore:["突破するためにつくられた"]},Damage:335,BlockEntityTag:{Base:11,Patterns:[{Color:14,Pattern:"mr"},{Color:16,Pattern:"flo"},{Color:14,Pattern:"sc"}]}} 1

effect clear @a[scores={job=4,use_isword=1..}] minecraft:strength

effect clear @a[scores={job=4,use_isword=1..}] minecraft:speed

execute at @a[scores={job=4,use_isword=1..}] run scoreboard players set @a[distance=0.2..5.2,limit=1,sort=nearest] deepwound -300

scoreboard players set @a[scores={job=4,broken_shield=1..}] broken_shield 0

scoreboard players set @a[scores={job=4,use_isword=1..}] use_isword 0
