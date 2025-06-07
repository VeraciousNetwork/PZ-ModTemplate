For any tiles to generate, create a directory here and place all tiles to be added
to that directory, (ideally named numerically for the order you require).

Example, if you have spritemaps for `my_bench` and `my_bed`,
create those directories and place all tiles into their respective directory.

```
designs
└── tiles
	├── my_bench
	│   ├── 1.png
	│   ├── 2.png
	│   └── 3.png
	└── my_bed
		├── 1.png
		├── 2.png
		└── 3.png
```

Run `generate_tilesets.sh` to render all the tiles as a proper tileset that can be imported into your Pack.

From TileZed, Tools -> .pack File -> Create .pack file
and select `designs/tilesets` as the input directory to compile all the tilesets into a single .pack file.

**NOTE**, each tile file must be 128x256 pixels in size.  (@todo add support for additional sizes if required.)
This will generate a spritemap that is 1024x2048.