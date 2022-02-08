execute if entity @a[limit=1,scores={wait_count=1..}] run title @a title {"score":{"name":"@a[limit=1]","objective":"wait_count"}}
execute if entity @a[limit=1,scores={wait_count=1..}] run schedule function main:count 1s
scoreboard players remove @a wait_count 1
