# Check if Player is AFK and Handle Accordingly

# Store prev Values of Player Locations
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

# Increment Player afk_ticks
execute as @a run scoreboard players add @s afk_ticks 1

# If Not Equal, reset afk_ticks
execute as @a if score @s same_x matches 0 run scoreboard players set @s afk_ticks 0
execute as @a if score @s same_y matches 0 run scoreboard players set @s afk_ticks 0
execute as @a if score @s same_z matches 0 run scoreboard players set @s afk_ticks 0

# Store prev Value of is_afk
execute as @a store result score @s was_afk run scoreboard players get @s is_afk
# Set is_afk to success of afk_ticks >= afk_threshold
execute as @a store success score @s is_afk run execute if score @s afk_ticks >= @s afk_threshold
# Limit afk_ticks to afk_threshold (to avoid overflow due to counting indefinitely)
execute as @a if score @s is_afk matches 1 run execute store result score @s afk_ticks run scoreboard players get @s afk_threshold

# Handle AFK Mode Change
execute as @a store success score @s did_afk_mode_change run execute unless score @s was_afk = @s is_afk
execute as @a store success score @s did_afk_begin run execute if score @s is_afk matches 1 if score @s did_afk_mode_change matches 1
execute as @a store success score @s did_afk_end run execute if score @s is_afk matches 0 if score @s did_afk_mode_change matches 1

# Give Saturation on did_afk_begin
execute as @a if score @s did_afk_begin matches 1 run effect give @s minecraft:saturation 86400 1
# Clear Saturation on did_afk_end
execute as @a if score @s did_afk_end matches 1 run effect clear @s minecraft:saturation
