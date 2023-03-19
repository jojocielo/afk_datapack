# Called on World (Re)Load

# Example of running function in namespace/functions folder
execute run function namespace:pack_load_message

# Example of running function in namespace/functions/examples folder
execute run function namespace:examples/conditional

# Scoreboard Trigger Single Example
scoreboard objectives add kill trigger

# Scoreboard Trigger Toggle Example
scoreboard objectives add toggle trigger
scoreboard objectives add was_toggled dummy
scoreboard objectives add is_toggled dummy
scoreboard objectives add did_toggle_change dummy

# Scoreboard Trigger Cycle Example
scoreboard objectives add cycle trigger
scoreboard objectives add prev_cycle dummy
scoreboard objectives add cur_cycle dummy
scoreboard objectives add did_cycle_change dummy
scoreboard objectives add cycle_length dummy
scoreboard players set @a cycle_length 3
