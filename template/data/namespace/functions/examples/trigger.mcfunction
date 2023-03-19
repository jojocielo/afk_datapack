# Simple Trigger Examples

# One Time Trigger
## Enable `kill` Trigger for all Players
scoreboard players enable @a kill
## Kill all Players with `kill = 1`
execute as @a unless score @s kill matches 0 run kill @s
## Reset `kill` for all Players
execute as @a unless score @s kill matches 0 run scoreboard players reset @s kill

# Toggle Trigger
## Enable `toggle` Trigger for all Players
scoreboard players enable @a toggle
## Store Prev value of Toggle
execute as @a store result score @s was_toggled run scoreboard players get @s is_toggled
## Get Cur value of Toggle
execute as @a store success score @s is_toggled run execute if score @s toggle matches 1
## Keep Toggle Within Bounds
execute as @a if score @s toggle matches 2.. run scoreboard players set @s toggle 0
## Check if Toggle Changed
execute as @a store success score @s did_toggle_change run execute unless score @s was_toggled = @s is_toggled
## Handle Toggle
execute as @a if score @s did_toggle_change matches 1 if score @s toggle matches 0 run tellraw @s {"text":"Toggle: 0", "color":"#AA0000"}
execute as @a if score @s did_toggle_change matches 1 if score @s toggle matches 1 run tellraw @s {"text":"Toggle: 1", "color":"#00AA33"}

# Cycle Trigger
## Enable `cycle` Trigger for all Players
scoreboard players enable @a cycle
## Store Prev Cycle
execute as @a store result score @s prev_cycle run scoreboard players get @s cur_cycle
## Keep Cycle Within Bounds
execute as @a if score @s cycle matches ..-1 run scoreboard players set @s cycle 0
execute as @a if score @s cycle >= @s cycle_length run scoreboard players set @s cycle 0
## Get Cur Cycle
execute as @a store result score @s cur_cycle run scoreboard players get @s cycle
## Check if Cycle Changed
execute as @a store success score @s did_cycle_change run execute unless score @s prev_cycle = @s cur_cycle
## Handle Cycles (currently 0-2, but can be extended by changing cycle_length and handling cases below)
execute as @a if score @s did_cycle_change matches 1 if score @s cycle matches 0 run tellraw @s {"text":"Cycle: 0", "color":"#AA0000"}
execute as @a if score @s did_cycle_change matches 1 if score @s cycle matches 1 run tellraw @s {"text":"Cycle: 1", "color":"#00AA33"}
execute as @a if score @s did_cycle_change matches 1 if score @s cycle matches 2 run tellraw @s {"text":"Cycle: 2", "color":"#0033AA"}
