# Called per tick (~50ms)

# Call Handlers
execute run function afk:handlers/player_location_handler
execute run function afk:handlers/player_move_handler
## Relies on above (must be last otherwise there will be a 1 tick delay [not the end of the world])
execute run function afk:handlers/afk_handler
