# Handle on (Re)Load for afk_handler.mcfunction

# Add and Set AFK Objectives
scoreboard objectives add afk_ticks dummy
scoreboard objectives add was_afk dummy
scoreboard objectives add is_afk dummy
scoreboard objectives add did_afk_mode_change dummy
scoreboard objectives add did_afk_begin dummy
scoreboard objectives add did_afk_end dummy
# Note: 1 tick ~= 50ms => 20 ticks ~= 1s => 6000 ticks ~= 5min
scoreboard objectives add afk_threshold dummy
scoreboard players set @a afk_threshold 6000

# Debug: Show Player AFK Objectives
#scoreboard objectives setdisplay sidebar afk_ticks
#scoreboard objectives setdisplay sidebar was_afk
#scoreboard objectives setdisplay sidebar is_afk
#scoreboard objectives setdisplay sidebar did_afk_mode_change
#scoreboard objectives setdisplay sidebar did_afk_begin
#scoreboard objectives setdisplay sidebar did_afk_end
#scoreboard objectives setdisplay sidebar afk_threshold
