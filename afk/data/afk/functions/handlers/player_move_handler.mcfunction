# Get, Handle, and Store Player Movement

# Increment movement_tick
# Used to accumulate distance over 2 ticks rather than 1,
# This is simply a bandaid fix, but helps avoid most false negatives,
# While also minimizing the time it takes to reset (thus avoiding most false positives as well)
execute as @a run scoreboard players add @s movement_tick 1

# Store Player NBT Data (Motion calculated per tick) TODO: `Motion` Not Currently Used
execute as @a store result score @s motion_x run data get entity @s Motion[0]
execute as @a store result score @s motion_y run data get entity @s Motion[1]
execute as @a store result score @s motion_z run data get entity @s Motion[2]
execute as @a store result score @s is_on_ground run data get entity @s OnGround

# Check if walk_dist exceeds threshold
# Exists because was running into issue of counting walk_dist when at the end of a water stream
# As well as issues of getting pushed/attacked by mobs (still not working properly)
execute as @a store success score @s is_walking run execute if score @s walk_dist matches 10..

# Calculate is_player_moving
scoreboard players set @a is_player_moving 0
execute as @a if score @s is_walking matches 1 run scoreboard players add @s is_player_moving 1
execute as @a if score @s is_sprinting matches 1.. run scoreboard players add @s is_player_moving 1
execute as @a if score @s is_crouch_walking matches 1.. run scoreboard players add @s is_player_moving 1
execute as @a if score @s is_jumping matches 1.. run scoreboard players add @s is_player_moving 1
execute as @a if score @s is_climbing matches 1.. run scoreboard players add @s is_player_moving 1
execute as @a if score @s is_swimming matches 1.. run scoreboard players add @s is_player_moving 1
execute as @a if score @s is_using_elytra matches 1.. run scoreboard players add @s is_player_moving 1
execute as @a if score @s is_riding_boat matches 1.. run scoreboard players add @s is_player_moving 1
execute as @a if score @s is_riding_horse matches 1.. run scoreboard players add @s is_player_moving 1
execute as @a if score @s is_riding_pig matches 1.. run scoreboard players add @s is_player_moving 1
execute as @a if score @s is_riding_strider matches 1.. run scoreboard players add @s is_player_moving 1
execute as @a store success score @s is_player_moving run execute if score @s is_player_moving matches 1..

# Reset Movement Values (to avoid overflow due to counting indefinitely)
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s walk_dist 0
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s is_sprinting 0
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s is_crouch_walking 0
execute as @a if score @s movement_tick matches 2.. if score @s is_on_ground matches 1 run scoreboard players set @s is_jumping 0
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s is_climbing 0
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s is_swimming 0
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s is_using_elytra 0
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s is_riding_boat 0
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s is_riding_horse 0
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s is_riding_pig 0
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s is_riding_strider 0
# Reset movement_tick
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s movement_tick 0

# TODO: calculate with rotation to get which keys are pressed
# Requires Scoreboard Objectives (Player Unique):
# is_forward_pressed
# is_left_pressed
# is_right_pressed
# is_back_pressed
# is_jump_pressed, is_jump_move
# is_crouch_pressed, is_crouch_move
