# Check if Player is AFK and Handle Accordingly

# Increment Player afk_ticks
execute as @a run scoreboard players add @s afk_ticks 1

# If not is_location_same (predicate), reset afk_ticks
#execute as @a[predicate=!afk:is_location_same] run scoreboard players set @s afk_ticks 0
# If not is_player_still (predicate), reset afk_ticks
execute as @a[predicate=!afk:is_player_still] run scoreboard players set @s afk_ticks 0

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

# Handle did_afk_begin
execute as @a if score @s did_afk_begin matches 1 run tag @s add is_afk
execute as @a if score @s did_afk_begin matches 1 run attribute @s minecraft:generic.movement_speed base set 0
execute as @a if score @s did_afk_begin matches 1 run effect give @s minecraft:regeneration 86400 255
execute as @a if score @s did_afk_begin matches 1 run effect give @s minecraft:resistance 86400 255
execute as @a if score @s did_afk_begin matches 1 run effect give @s minecraft:fire_resistance 86400 255
execute as @a if score @s did_afk_begin matches 1 run effect give @s minecraft:water_breathing 86400 1
execute as @a if score @s did_afk_begin matches 1 run effect give @s minecraft:saturation 86400 255
execute as @a if score @s did_afk_begin matches 1 run effect give @s minecraft:slow_falling 86400 255

# Handle did_afk_end
execute as @a if score @s did_afk_end matches 1 run tag @s remove is_afk
## Reset to default movement speed (this is the value as of 1.19.4, though I am not sure if it the same for other versions)
# TODO: Could possibly store in scoreboard and use scaling, but that seems more likely to cause issues
execute as @a if score @s did_afk_end matches 1 run attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
execute as @a if score @s did_afk_end matches 1 run effect clear @s minecraft:regeneration
execute as @a if score @s did_afk_end matches 1 run effect clear @s minecraft:resistance
execute as @a if score @s did_afk_end matches 1 run effect clear @s minecraft:fire_resistance
execute as @a if score @s did_afk_end matches 1 run effect clear @s minecraft:water_breathing
execute as @a if score @s did_afk_end matches 1 run effect clear @s minecraft:saturation
execute as @a if score @s did_afk_end matches 1 run effect clear @s minecraft:slow_falling
