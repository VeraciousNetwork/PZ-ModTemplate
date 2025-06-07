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

Pre-compiled spritemaps can be placed in `designs/tilesets` or individual tile images can be placed
in `designs/tiles` and compiled with `generate_tilesets.sh`.

These can be used to generate `Pack` files to get imported into tiles with TileZed.

Generated tiles should be stored within `supplemental/Tiles` and packs in `supplemental/Packs`.
Be sure to update `settings.sh` to include the new tileset or pack in the relevant mod and include
those files to be managed by git by adding them to the `.gitignore` file as an excluded ignore.
(This is needed because there is a global ignore for anything within Packs and Tiles.)

These packs and tiles will automatically get deployed with the mod upon running `deploy_local.sh`
(assuming you added them to settings.sh).


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
