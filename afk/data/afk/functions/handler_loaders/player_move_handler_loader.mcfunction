# Handle on (Re)Load for player_move_handler.mcfunction

# NOTE: I left out minecart and other water related movement because they are utilized by some afk farms
# They could be added simply by copying how `is_sprinting` is handled

# Add Player Movement Objectives
scoreboard objectives add movement_tick dummy
scoreboard objectives add motion_x dummy
scoreboard objectives add motion_y dummy
scoreboard objectives add motion_z dummy
scoreboard objectives add walk_dist minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add is_walking dummy
scoreboard objectives add is_sprinting minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add is_crouch_walking minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add is_jumping minecraft.custom:minecraft.jump
scoreboard objectives add is_using_elytra minecraft.custom:minecraft.aviate_one_cm
# (minecraft.custom:minecraft.climb_one_cm) only counts when climbing up (not down)
scoreboard objectives add is_climbing minecraft.custom:minecraft.climb_one_cm
# (minecraft.custom:minecraft.swim_one_cm) only counts when in sprint mode in water
scoreboard objectives add is_swimming minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add is_riding_boat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add is_riding_horse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add is_riding_pig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add is_riding_strider minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add is_on_ground dummy
scoreboard objectives add is_player_moving dummy

# Debug: Show Player Movement Objectives
#scoreboard objectives setdisplay sidebar movement_tick
#scoreboard objectives setdisplay sidebar motion_x
#scoreboard objectives setdisplay sidebar motion_y
#scoreboard objectives setdisplay sidebar motion_z
#scoreboard objectives setdisplay sidebar walk_dist
#scoreboard objectives setdisplay sidebar is_walking
#scoreboard objectives setdisplay sidebar is_sprinting
#scoreboard objectives setdisplay sidebar is_crouch_walking
#scoreboard objectives setdisplay sidebar is_jumping
#scoreboard objectives setdisplay sidebar is_using_elytra
#scoreboard objectives setdisplay sidebar is_climbing
#scoreboard objectives setdisplay sidebar is_swimming
#scoreboard objectives setdisplay sidebar is_riding_boat
#scoreboard objectives setdisplay sidebar is_riding_horse
#scoreboard objectives setdisplay sidebar is_riding_pig
#scoreboard objectives setdisplay sidebar is_riding_strider
#scoreboard objectives setdisplay sidebar is_on_ground
#scoreboard objectives setdisplay sidebar is_player_moving
