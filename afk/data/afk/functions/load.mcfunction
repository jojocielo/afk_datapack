# Called on World (Re)Load

# Notify Chat of (Re)Load
execute run tellraw @a {"text":"(Re)Loaded AFK Data Pack", "color":"#0033AA"}

# Call Handler Loaders
execute run function afk:handler_loaders/player_location_handler_loader
execute run function afk:handler_loaders/player_move_handler_loader
execute run function afk:handler_loaders/afk_handler_loader
