# A Template for Building Minecraft Data Packs

## How to Use:
- Change `pack_format` in `./template/pack.mcmeta` to match version (see links below for more info)
- Change name of `./template` folder to name of data pack
- Update `./zip.bat` to match above name change
- Change name of `./template/data/namespace` folder to namespace for the data pack
- Update `load.json` and `tick.json` in `./template/data/minecraft/tags/functions` to match above name change
- Update `load.mcfunction` and `tick.mcfunction` in `./template/data/namespace/functions` to match above name change
- Run `./zip.bat` (double click or in cmd from the project root directory)
- Copy and paste created `*.zip` file to the world's `datapacks/` directory
- Open world, and/or run `/reload` in cmd
- If working properly, the console should print `Loaded Template!` in blue text
- See documentation below for more information

## Basic Info:
- Data Packs provide the functionality of command blocks without the limitations of having to place them
- `*.mcfunction` files use the same minecraft command syntax as would be used in the console or for command blocks (execept without the leading `/`)
- Lines that begin with `#` in `*.mcfunction` files are comments, and thus will not be executed
- Commands are executed consecutively, in order
- For a `*.mcfunction` to be called, it must be called from within `load.mcfunction`, `tick.mcfunction`, `load.json`, or `tick.json` (or from within a function called in any of these files)

## Documentation:
### Creating a Data Pack (and using `/execute` with conditionals)
[Minecraft Wiki: Creating a data pack](https://minecraft.fandom.com/wiki/Tutorials/Creating_a_data_pack)  
[Minecraft Wikik: Execute](https://minecraft.fandom.com/wiki/Commands/execute)  
[Unicorn Utterances' Data Pack Tutorial](https://unicorn-utterances.com/collections/minecraft-data-packs)

## Using the Scoreboard
[Minecraft Wiki: Scoreboard](https://minecraft.fandom.com/wiki/Scoreboard)

### Creating Predicates
[Minecraft Wiki: Predicate](https://minecraft.fandom.com/wiki/Predicate)  
[Misode's Predicate Generator](https://misode.github.io/predicate)
