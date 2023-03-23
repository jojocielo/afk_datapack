# Get, and Store Player Location Data
# Sets Tag: is_location_same

# Store prev Player Locations
execute as @a store result score @s prev_x run scoreboard players get @s cur_x
execute as @a store result score @s prev_y run scoreboard players get @s cur_y
execute as @a store result score @s prev_z run scoreboard players get @s cur_z

# Update cur Player Locations
execute as @a store result score @s cur_x run data get entity @s Pos[0]
execute as @a store result score @s cur_y run data get entity @s Pos[1]
execute as @a store result score @s cur_z run data get entity @s Pos[2]

# Handle is_location_same tag
execute as @a[predicate=afk:is_location_same, tag=!is_location_same] run tag @s add is_location_same
execute as @a[predicate=!afk:is_location_same, tag=is_location_same] run tag @s remove is_location_same
