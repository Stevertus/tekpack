
execute if score @s tpCraftID matches 1 run replaceitem block ~ ~ ~ container.15 minecraft:carrot_on_a_stick{id:101s,Unbreakable:1b,HideFlags:4,Damage:1,Stackable:1b,maxStack:64s,AttributeModifiers:[{UUIDMost:-1,UUIDLeast:-1,Amount:1,Slot:"mainhand",AttributeName:"generic.followRange",Operation:0,Name:"stack"}],display:{Name:"{\"text\":\"§aCable\"}",Lore:["§aTransfers energy"]}}
execute if score @s tpCraftID matches 2 run tag @s add tpCraftNoStack
execute if score @s tpCraftID matches 2 run replaceitem block ~ ~ ~ container.15 minecraft:carrot_on_a_stick{Unbreakable:1b,HideFlags:6,Damage:2,display:{Name:"{\"text\":\"§5Technical Crafting Table\"}"}}
execute if score @s tpCraftID matches 3 run replaceitem block ~ ~ ~ container.15 minecraft:carrot_on_a_stick{id:102s,Unbreakable:1b,HideFlags:4,Damage:4,Stackable:1b,maxStack:64s,AttributeModifiers:[{UUIDMost:-1,UUIDLeast:-1,Amount:1,Slot:"mainhand",AttributeName:"generic.followRange",Operation:0,Name:"stack"}],display:{Name:"{\"text\":\"§5Solar Panel\"}"}}
execute if score @s tpCraftID matches 4 run replaceitem block ~ ~ ~ container.15 minecraft:carrot_on_a_stick{Unbreakable:1b,HideFlags:6,Damage:3,display:{Name:"{\"text\":\"§aBattery\"}"}}
execute if score @s tpCraftID matches 5 run replaceitem block ~ ~ ~ container.15 minecraft:carrot_on_a_stick{Unbreakable:1b,HideFlags:6,Damage:6,display:{Name:"{\"text\":\"§5Electric Furnace\"}"}}
execute if score @s tpCraftID matches 5 run tag @s add tpCraftNoStack
execute if score @s tpCraftID matches 6 run replaceitem block ~ ~ ~ container.15 minecraft:carrot_on_a_stick{Unbreakable:1b,HideFlags:6,Damage:5,display:{Name:"{\"text\":\"§5Block Breaker\"}"}}
execute if score @s tpCraftID matches 6 run tag @s add tpCraftNoStack
execute if score @s tpCraftID matches 7 run replaceitem block ~ ~ ~ container.15 minecraft:stone_hoe{id:103s,Unbreakable:1b,Damage:6,HideFlags:4,Stackable:1b,maxStack:64s,AttributeModifiers:[{UUIDMost:-1,UUIDLeast:-1,Amount:1,Slot:"mainhand",AttributeName:"generic.followRange",Operation:0,Name:"stack"}],display:{Name:"{\"text\":\"§aBattery Cell\"}"}}
execute if score @s tpCraftID matches 8 run replaceitem block ~ ~ ~ container.15 minecraft:carrot_on_a_stick{Unbreakable:1b,HideFlags:6,Damage:7,display:{Name:"{\"text\":\"§5Vacuum Hopper\"}"}}
execute if score @s tpCraftID matches 8 run tag @s add tpCraftNoStack
execute if score @s tpCraftID matches 9 run replaceitem block ~ ~ ~ container.15 minecraft:carrot_on_a_stick{Unbreakable:1b,HideFlags:6,Damage:8,display:{Name:"{\"text\":\"§5Drill\"}"}}
execute if score @s tpCraftID matches 9 run tag @s add tpCraftNoStack
execute if score @s tpCraftID matches 9 run tag @s add tpCraftNoStack
execute if score @s tpCraftID matches 10 run replaceitem block ~ ~ ~ container.15 minecraft:carrot_on_a_stick{Unbreakable:1b,HideFlags:6,Damage:9,display:{Name:"{\"text\":\"§aGenerator\"}"}}
execute if score @s tpCraftID matches 10 run tag @s add tpCraftNoStack
