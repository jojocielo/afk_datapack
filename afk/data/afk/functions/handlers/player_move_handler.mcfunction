# Get, Handle, and Store Player Movement Data
# Used by Predicate: is_player_still

# Increment movement_tick
# Used to accumulate distance over 2 ticks rather than 1,
# This is simply a bandaid fix, but helps avoid most false negatives,
# While also minimizing the time it takes to reset (thus avoiding most false positives as well)
execute as @a run scoreboard players add @s movement_tick 1

# While is_afk minecraft:generic.movement_speed is 0, making it impossible to move normally
# Thus any walk_dist or crouch_dist (which depends on if the player is crouched) is due to external factors
# (i.e. mobs pushing/hitting you, sliding on ice, getting to edge of water stream, etc.)
execute as @a store success score @s is_walking run execute as @s[tag=!is_afk] unless score @s walk_dist matches 0
execute as @a store success score @s is_crouch_walking run execute as @s[tag=!is_afk] unless score @s crouch_dist matches 0

# Reset Movement Values (to avoid overflow due to counting indefinitely)
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s walk_dist 0
execute as @a if score @s movement_tick matches 2.. run scoreboard players set @s crouch_dist 0
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
