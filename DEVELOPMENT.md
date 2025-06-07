# Project Zomboid Mod Development Guide

End-users can ignore this document. 
This is intended for developers who want to contribute to the mod
or create their own mod based on this template.

## Setting up Project

### Configure settings

Open `settings.sh` and edit to fit your needs.  Enter the mod name, title, description, etc.

### Setup local environment

Running `setup.sh` will set up the local environment for development...

1. Loads game tiles and packs
2. Installs [TileZed/WorldEd](https://theindiestone.com/forums/index.php?/topic/59675-latest-tilezed-worlded-and-tilesets-september-8-2022/)
3. Installs and runs [pz-zdoc](https://github.com/cocolabs/pz-zdoc) to generate game documentation from your live game code
4. Downloads [BlenderKit](https://github.com/BlenderKit/BlenderKit) to supplemental/BlenderResources for convenience

This setup generally only needs to be run once.


## Tiles and Spritemap

### Create new tileset

This step is not required for this project as a tileset is already created,
but including instructions for future reference.

1. Run TileZed.sh and click Tools -> Tilesets... to rebuild the local cache of tilesets
2. (if this does not work, delete ~/.TileZed)
3. Click Tools -> Tile Properties (.tiles)
4. Create new tileset named something meaningful located within supplemental/Tiles
5. Add necessary tilesets and save the tiles

### Add or update tileset

For tilesets, save the full tileset as a .png within designs/tilesets (1024x2048 recommended).
The image filename should match what you want the tileset to be named.

1. Run `deploy_local.sh` to copy tileset into TileZed
2. Run TileZed.sh and click Tools -> Tilesets... to rebuild the local cache of tilesets
3. (if this does not work, delete ~/.TileZed)
4. Click Tools -> Tile Properties (.tiles)
5. Open mod tileset from supplemental/Tiles
6. Add necessary tilesets and save the tiles

### Update Pack

1. Run TileZed.sh and click Tools -> Create .pack file
2. Save .pack file in supplemental/Packs/ (overwriting existing file if necessary)
3. Add designs/tilesets as input image directories
4. Add mod-specific tiles file from supplemental/Tiles/ if necessary


## Deploying Local Code

Run `deploy_local.sh` to install the mod in your local game directory.
This is useful for testing prior to deployment.

Make sure you've already setup `settings.sh` prior to running this script.

This will deploy the mod code to `~/Zomboid/Workshop/(MODNAME)` and prepped to be either tested locally
or uploaded to the Steam Workshop from within the game client.

### For deployment from within the game:

For existing workshop mods, ensure that you set the Workshop ID to `settings.sh` as `WORKSHOP_ID`.

For new mods, set that value once you uploaded your first mod.
This will let the game client track the mod for future updates.
