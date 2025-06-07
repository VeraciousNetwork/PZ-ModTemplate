# PZ-ModTemplate

Mod template build system for Project Zomboid

This has a basic directory structure for a functional and deployable mod plus a few scripts to assist with development.

See the [Development Guide](DEVELOPMENT.md) for more information on how to work with this repository.

---

In short, this project allows you to have your code in some location tracked with git, then have the necessary code
deployed to ~/Zomboid/Workshop for testing and deployment to the Steam workshop.

Version tracking is also built-in where building a new release will generate a package in `dist/`
named with your mod name and version number as defined in `settings.sh`.

TileZed is also downloaded to `supplemental/` to allow easy development of game tiles and packs.

LUA code completion is provided via `pz-zdoc` to offer in-editor code completion and lookups.
This code is generated from the live game code installed with Steam, (so it'll reflect the exact version you are running.)

---

To get started, just hit the **Use this template** button at the top of the page and clone this to your own repo.
