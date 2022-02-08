tellraw @a "初期化を実行しています…"



#必要なスコアボード作成
scoreboard objectives add gameplay dummy

scoreboard objectives add 2 dummy

scoreboard objectives add KD dummy

scoreboard objectives add kill_count playerKillCount

scoreboard objectives add Kcarry dummy

scoreboard objectives add death deathCount

scoreboard objectives add Dcarry dummy

scoreboard objectives add border dummy

scoreboard objectives add map dummy

scoreboard objectives add sneakTime dummy

scoreboard objectives add use_skill dummy

scoreboard objectives add wait_count dummy

scoreboard objectives add sneakadd minecraft.custom:minecraft.sneak_time

scoreboard objectives add sprintadd minecraft.custom:minecraft.sprint_one_cm

scoreboard objectives add sprintTime dummy

scoreboard objectives add life health

scoreboard objectives add job dummy

scoreboard objectives add safe_count dummy

scoreboard objectives add use_bow minecraft.used:minecraft.bow

scoreboard objectives add ct1 dummy

scoreboard objectives add ct2 dummy

scoreboard objectives add ct3 dummy

scoreboard objectives add use_potion_sp minecraft.used:minecraft.splash_potion

scoreboard objectives add use_potion_cloud minecraft.used:minecraft.lingering_potion

scoreboard objectives add use_dirtystick minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add use_pearl minecraft.used:minecraft.ender_pearl

scoreboard objectives add use_carrot_stick minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add id1 dummy

scoreboard objectives add id2 dummy

scoreboard objectives add id3 dummy

scoreboard objectives add id4 dummy

scoreboard objectives add uranai dummy

scoreboard players set @a uranai 0

scoreboard objectives add use_snowball minecraft.used:minecraft.snowball

scoreboard objectives add click_villager minecraft.custom:minecraft.talked_to_villager

scoreboard objectives add open_shulker minecraft.custom:minecraft.open_shulker_box



scoreboard objectives setdisplay list life

scoreboard objectives setdisplay sidebar kill_count

scoreboard players set @a kill_count 0

scoreboard players set @a 2 2

scoreboard players set @a death 0

scoreboard objectives add use_xbow minecraft.used:minecraft.crossbow

scoreboard objectives add use_isword minecraft.used:minecraft.iron_sword

scoreboard objectives add broken_shield minecraft.broken:minecraft.shield

scoreboard objectives add stun dummy "行動不能"

scoreboard objectives add noise dummy "騒音"

scoreboard objectives add deepwound dummy "深い傷"

scoreboard objectives add smoke dummy "毒の煙"

scoreboard objectives add discovery dummy "発見"

scoreboard objectives add remainblade dummy "残刃"

scoreboard objectives add detection dummy "物体探知"

scoreboard objectives setdisplay sidebar KD

scoreboard objectives add use_tri minecraft.used:minecraft.trident



playsound minecraft:block.note_block.guitar master @a

tellraw @a "初期化が完了しました"


