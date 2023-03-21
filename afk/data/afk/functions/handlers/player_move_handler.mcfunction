# Get, Handle, and Store Player Movement Data
# Used by Predicate: is_player_still

# Increment movement_tick
# Used to accumulate distance over 2 ticks rather than 1,
# This is simply a bandaid fix, but helps avoid most false negatives,
# While also minimizing the time it takes to reset (thus avoiding most false positives as well)
execute as @a run scoreboard players add @s movement_tick 1

# Check if walk_dist exceeds threshold
# Exists because was running into issue of counting walk_dist when at the end of a water stream
# As well as issues of getting pushed/attacked by mobs (still not working properly)
execute as @a store success score @s is_walking run execute if score @s walk_dist matches 20..

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
