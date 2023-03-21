# Get, Handle, and Store Player Location Data

# Store prev Player Locations
execute as @a store result score @s prev_x run scoreboard players get @s cur_x
execute as @a store result score @s prev_y run scoreboard players get @s cur_y
execute as @a store result score @s prev_z run scoreboard players get @s cur_z

# Update cur Player Locations
execute as @a store result score @s cur_x run data get entity @s Pos[0]
execute as @a store result score @s cur_y run data get entity @s Pos[1]
execute as @a store result score @s cur_z run data get entity @s Pos[2]

# Check if prev and cur Player Locations are Equal
execute as @a store success score @s same_x run execute if score @s prev_x = @s cur_x
execute as @a store success score @s same_y run execute if score @s prev_y = @s cur_y
execute as @a store success score @s same_z run execute if score @s prev_z = @s cur_z

# Calculate did_location_change
scoreboard players set @a did_location_change 0
execute as @a if score @s same_x matches 1 run scoreboard players add @s did_location_change 1
execute as @a if score @s same_y matches 1 run scoreboard players add @s did_location_change 1
execute as @a if score @s same_z matches 1 run scoreboard players add @s did_location_change 1
execute as @a store success score @s did_location_change run execute if score @s did_location_change matches 1..
