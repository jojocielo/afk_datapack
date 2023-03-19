# Called on World (Re)Load

execute run tellraw @a {"text":"Loaded Server Core", "color":"#0033AA"}

# Player Location Objectives
scoreboard objectives add prev_x dummy
scoreboard objectives add prev_y dummy
scoreboard objectives add prev_z dummy
scoreboard objectives add cur_x dummy
scoreboard objectives add cur_y dummy
scoreboard objectives add cur_z dummy
scoreboard objectives add same_x dummy
scoreboard objectives add same_y dummy
scoreboard objectives add same_z dummy

# AFK Objectives
scoreboard objectives add afk_ticks dummy
scoreboard objectives add was_afk dummy
scoreboard objectives add is_afk dummy
scoreboard objectives add did_afk_mode_change dummy
scoreboard objectives add did_afk_begin dummy
scoreboard objectives add did_afk_end dummy
# Note: 1 tick ~= 50ms => 20 ticks ~= 1s => 6000 ticks ~= 5min
scoreboard objectives add afk_threshold dummy
scoreboard players set @a afk_threshold 6000

# Debug: Show Player Location Objectives
#scoreboard objectives setdisplay sidebar prev_x
#scoreboard objectives setdisplay sidebar prev_y
#scoreboard objectives setdisplay sidebar prev_z
#scoreboard objectives setdisplay sidebar cur_x
#scoreboard objectives setdisplay sidebar cur_y
#scoreboard objectives setdisplay sidebar cur_z
#scoreboard objectives setdisplay sidebar same_x
#scoreboard objectives setdisplay sidebar same_y
#scoreboard objectives setdisplay sidebar same_z

# Debug: Show Player AFK Objectives
#scoreboard objectives setdisplay sidebar afk_ticks
#scoreboard objectives setdisplay sidebar was_afk
#scoreboard objectives setdisplay sidebar is_afk
#scoreboard objectives setdisplay sidebar did_afk_mode_change
#scoreboard objectives setdisplay sidebar did_afk_begin
#scoreboard objectives setdisplay sidebar did_afk_end
