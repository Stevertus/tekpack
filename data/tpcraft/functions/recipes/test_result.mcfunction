
execute if score @s tpCraftID matches 3390001 run tag @s add tpCraftNoStack
execute if score @s tpCraftID matches 3390001 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390001,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Technical Crafting Table\",\"italic\":false,\"color\":\"dark_purple\"}"}}
execute if score @s tpCraftID matches 3390002 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390002,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Cable\",\"italic\":false,\"color\":\"dark_purple\"}",Lore:["{\"text\":\"§aTransfers energy\"}"]}}
execute if score @s tpCraftID matches 3390003 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390003,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Battery\",\"italic\":false,\"color\":\"green\"}"}}
execute if score @s tpCraftID matches 3390004 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390004,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Generator\",\"italic\":false,\"color\":\"green\"}"}}
execute if score @s tpCraftID matches 3390005 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390005,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Solar Panel\",\"italic\":false,\"color\":\"green\"}"}}
execute if score @s tpCraftID matches 3390006 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390006,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Wind Turbine\",\"italic\":false,\"color\":\"green\"}"}}
execute if score @s tpCraftID matches 3390007 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390007,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Water Turbine\",\"italic\":false,\"color\":\"green\"}"}}
execute if score @s tpCraftID matches 3390008 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390008,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Electric Furnace\",\"italic\":false,\"color\":\"dark_purple\"}"}}
execute if score @s tpCraftID matches 3390009 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390009,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Block Breaker\",\"italic\":false,\"color\":\"dark_purple\"}"}}
execute if score @s tpCraftID matches 3390010 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390010,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Vacuum Hopper\",\"italic\":false,\"color\":\"dark_purple\"}"}}
execute if score @s tpCraftID matches 3390011 run replaceitem block ~ ~ ~ container.15 minecraft:firework_rocket{Fireworks:{},CustomModelData:3390011,isTekPack:1,HideFlags:6,display:{Name:"{\"text\":\"Drill\",\"italic\":false,\"color\":\"dark_purple\"}"}}
execute if score @s tpCraftID matches 3390012 run replaceitem block ~ ~ ~ container.15 firework_rocket{Fireworks:{},tpdecoBlock:1,CustomModelData:3390012,display:{Name:"{\"text\":\"Gridwalk Stairs\",\"italic\":false}"}}
execute if score @s tpCraftID matches 3390013 run replaceitem block ~ ~ ~ container.15 firework_rocket{Fireworks:{},tpdecoBlock:1,CustomModelData:3390013,display:{Name:"{\"text\":\"Gridwalk\",\"italic\":false}"}}
execute if score @s tpCraftID matches 3390014 run replaceitem block ~ ~ ~ container.15 firework_rocket{Fireworks:{},tpdecoBlock:1,CustomModelData:3390014,display:{Name:"{\"text\":\"Hardened Metal\",\"italic\":false}"}}
execute if score @s tpCraftID matches 3390015 run replaceitem block ~ ~ ~ container.15 firework_rocket{Fireworks:{},tpdecoBlock:1,CustomModelData:3390015,display:{Name:"{\"text\":\"Metal Ventilator\",\"italic\":false}"}}
execute if score @s tpCraftID matches 3390016 run replaceitem block ~ ~ ~ container.15 firework_rocket{Fireworks:{},tpdecoBlock:1,CustomModelData:3390016,display:{Name:"{\"text\":\"Barrier Tape\",\"italic\":false}"}}
execute if score @s tpCraftID matches 3390017 run replaceitem block ~ ~ ~ container.15 firework_rocket{Fireworks:{},tpdecoBlock:1,CustomModelData:3390017,display:{Name:"{\"text\":\"Misted Glass\",\"italic\":false}"}}
execute if score @s tpCraftID matches 3390018 run replaceitem block ~ ~ ~ container.15 firework_rocket{Fireworks:{},tpdecoBlock:1,CustomModelData:3390018,display:{Name:"{\"text\":\"White Bricks\",\"italic\":false}"}}

#items
execute if score @s tpCraftID matches 3391001 run replaceitem block ~ ~ ~ container.15 written_book{HideFlags:63,CustomModelData:3390001,pages:["[\"\",{\"text\":\"\\uEab1\",\"color\":\"white\"},{\"text\":\"\\n\\n\\n\\n Hello! Welcome to the tekPack Guide.\\n\\n Here you can find all the crafting recipes and concepts.\\nAlso take a glance online:\",\"insertion\":\"/give @p written_book{pages:%s,title:CustomBook,author:Player}\",\"color\":\"none\"},{\"text\":\"stevertus.com/tekPack\",\"color\":\"blue\",\"clickEvent\":{\"action\":\"open_url\",\"value\":\"https://stevertus.com/tekPack\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"[click]\"}]}}}]","[\"\",{\"text\":\"Quick Reference\\n\",\"underlined\":true},{\"text\":\"\\n- Energy\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"4\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"[open]\"}]}},\"underlined\":false},{\"text\":\"\\n- Technical Crafting Table\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"5\"}},{\"text\":\"\\n- Battery Cell\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"6\"}},{\"text\":\"\\n- Cable\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"7\"}},{\"text\":\"\\n- Battery\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"8\"}},{\"text\":\"\\n- Generator\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"9\"}},{\"text\":\"\\n- Solar Panel\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"10\"}},{\"text\":\"\\n- Turbine Blades\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"11\"}},{\"text\":\"\\n- Wind Turbine\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"12\"}}]","[\"\",{\"text\":\"\\n- Water Turbine\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"13\"}},{\"text\":\"\\n- Electric Furnace\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"14\"}},{\"text\":\"\\n- Block Breaker\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"15\"}},{\"text\":\"\\n- Vacuum Hopper\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"16\"}},{\"text\":\"\\n- Drill\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"17\"}}]","[\"\",{\"text\":\"\\uEab2\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEab3\",\"color\":\"white\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"\",\"extra\":[{\"text\":\"test\"}]}}}]","[\"\",{\"text\":\"\\uEab4\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEab5\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEab6\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEab7\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEab8\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEab9\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEaba\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEabb\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEabc\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEabd\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEabe\",\"color\":\"white\"}]","[\"\",{\"text\":\"\\uEabf\",\"color\":\"white\"}]"],title:"§5tekBook",author:"Stevertus"}


execute if score @s tpCraftID matches 3391002 run replaceitem block ~ ~ ~ container.15 minecraft:lime_dye{CustomModelData:3390001,HideFlags:4,display:{Name:"{\"text\":\"Battery Cell\",\"italic\":false,\"color\":\"green\"}"}}
execute if score @s tpCraftID matches 3391003 run replaceitem block ~ ~ ~ container.15 iron_ingot{CustomModelData:3390001,HideFlags:6,display:{Name:"{\"text\":\"Turbine Blades\",\"italic\":false,\"color\":\"gray\"}"}}
