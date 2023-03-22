# Handle on (Re)Load for player_move_handler.mcfunction

# NOTE: I left out movement modes below because they are utilized by some afk farms/creative mode
# They can be added simply by copying how `is_swimming` is handled
#scoreboard objectives add is_flying minecraft.custom:minecraft.fly_one_cm
#scoreboard objectives add is_walking_on_water minecraft.custom:minecraft.walk_on_water_one_cm
#scoreboard objectives add is_walking_under_water minecraft.custom:minecraft.walk_under_water_one_cm
#scoreboard objectives add is_riding_minecart minecraft.custom:minecraft.minecart_one_cm
# Fall only updates when upon landing, and if was greater than a certain height (difficult to use)
#scoreboard objectives add is_falling minecraft.custom:minecraft.fall_one_cm

# Add Player Movement Objectives
scoreboard objectives add movement_tick dummy
scoreboard objectives add motion_x dummy
scoreboard objectives add motion_y dummy
scoreboard objectives add motion_z dummy
scoreboard objectives add walk_dist minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add is_walking dummy
scoreboard objectives add crouch_dist minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add is_crouch_walking dummy
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
#scoreboard objectives setdisplay sidebar crouch_dist
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
