# Handle on (Re)Load for player_location_handler.mcfunction

# Add and Set Player Location Objectives
scoreboard objectives add prev_x dummy
scoreboard objectives add prev_y dummy
scoreboard objectives add prev_z dummy
scoreboard objectives add cur_x dummy
scoreboard objectives add cur_y dummy
scoreboard objectives add cur_z dummy
scoreboard objectives add same_x dummy
scoreboard objectives add same_y dummy
scoreboard objectives add same_z dummy
scoreboard objectives add did_location_change dummy

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
#scoreboard objectives setdisplay sidebar did_location_change
