##
# Settings for this mod.
##

##
# Name of this mod, used to create the top-level directory in the game
#
export MOD_NAME="YourModName"


##
# Title for Steam Workshop
#
export MOD_TITLE="Your new mod"


##
# Once you have a workshop ID for your mod, put it here.
# leave as 0 for a new mod
#
export WORKSHOP_ID=0


##
# Tags to set for Steam workshop, refer to the currently supported tags
# and separate each tag with a semicolon (;)
export MOD_TAGS="Build 41;Build 42"


##
# Set the visibility for Steam, recommended to be 'public' for published mods.
# Supported values are:
# public
# friends
# private
# unlisted
export MOD_VISIBILITY="public"


##
# Set to the mod version to show inside Project Zomboid.
#
# Should be a string that only contains letters, numbers, periods, underscores, tilde, or dashes.
# Used to set `modversion=` within `mod.info` files.
export MOD_VERSION="0.0.1"


##
# Newline-separated list of tiles to install
#
# ex to install "mytiles.tiles" to B41 and B42 (via common):
# TILES="mytiles.tiles:ModTemplate/common
# mytiles.tiles:ModTemplate"
#
# To specify a different destination filename:
# TILES="mytile_someversion.tiles:MyMod/SpecificVersion:mytile.tiles"
#
# This allows you to have multiple mods inside this collection, and select which mod gets which tile.
#
# If no tiles are used, leave this empty.
#
export TILES=""


##
# Newline-separated list of packs to install
#
# ex:
# TILES="mypacks.pack:ModTemplate/common
# mypacks.pack:ModTemplate"
#
# To specify a different destination filename:
# TILES="mypack_someversion.pack:MyMod/SpecificVersion:mypack.pack"
#
# If no packs are used, leave this empty.
#
export PACKS=""
