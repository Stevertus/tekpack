scoreboard players remove @s Iamount 1

execute as @s[scores={inv=1}] store result entity @s Inventory[0].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=2}] store result entity @s Inventory[1].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=3}] store result entity @s Inventory[2].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=4}] store result entity @s Inventory[3].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=5}] store result entity @s Inventory[4].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=6}] store result entity @s Inventory[5].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=7}] store result entity @s Inventory[6].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=8}] store result entity @s Inventory[7].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=9}] store result entity @s Inventory[8].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=10}] store result entity @s Inventory[9].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=11}] store result entity @s Inventory[10].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=12}] store result entity @s Inventory[11].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=13}] store result entity @s Inventory[12].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=14}] store result entity @s Inventory[13].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=15}] store result entity @s Inventory[14].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=16}] store result entity @s Inventory[15].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=17}] store result entity @s Inventory[16].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=18}] store result entity @s Inventory[17].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=19}] store result entity @s Inventory[18].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=20}] store result entity @s Inventory[19].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=21}] store result entity @s Inventory[20].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=22}] store result entity @s Inventory[21].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=23}] store result entity @s Inventory[22].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=24}] store result entity @s Inventory[23].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=25}] store result entity @s Inventory[24].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=26}] store result entity @s Inventory[25].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=27}] store result entity @s Inventory[26].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=28}] store result entity @s Inventory[27].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=29}] store result entity @s Inventory[28].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=30}] store result entity @s Inventory[29].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=31}] store result entity @s Inventory[30].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=32}] store result entity @s Inventory[31].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=33}] store result entity @s Inventory[32].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=34}] store result entity @s Inventory[33].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=35}] store result entity @s Inventory[34].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=36}] store result entity @s Inventory[35].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=37}] store result entity @s Inventory[36].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=38}] store result entity @s Inventory[37].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=39}] store result entity @s Inventory[38].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=40}] store result entity @s Inventory[39].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount
execute as @s[scores={inv=41}] store result entity @s Inventory[40].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Iamount

execute as @s[scores={Iamount=0}] run replaceitem entity @s weapon.offhand air

scoreboard players add @s Istack 1
execute store result entity @s SelectedItem.tag.AttributeModifiers[0].Amount int 1 run scoreboard players get @s Istack
