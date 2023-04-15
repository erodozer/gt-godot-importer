# gt-godot-importer
Directly import 3D models from Gran Turismo 2 into Godot 4.0.

This plugin came about due to a desire to render car models from Gran Turismo 2 for the Playstation 1 in personal projects and Twitch Overlays.

Format parsing is based on research and analysis of code from [GT2 Car Viewer v0.2b](http://lgt.createaforum.com/tools-66/gt2mv/) and [Pez2k's GT2Tools](https://github.com/pez2k/gt2tools).

The OBJ formats exported from such tools did not prove sufficient for use in Godot.  The models either would come out with too much information or not enough, and were not nearly as portable.
Since the objective of this plugin is to be able to strictly render the models as-is, and not focus on complex tooling and mutation of the data, it is lacking a lot of what you will find in those tools.
It is recommended you do your own research and judgement for your use-cases to decide between which approach you wish to take.

https://user-images.githubusercontent.com/316728/232184206-af8f2d09-9397-4fb0-989c-5052fc84ca12.mp4

## How do I use this

After enabling the plugin, Godot will be able to import CDO and CNO assets into your project.  In addition to the model, you need also supply the associated CDP/CNP file, which contains the palette data.
In order to have these files, you must first extract them using [GTVolTools](https://github.com/adeyblue/GTVolTools) from a legitmate copy of Gran Turismo 2.  Any region of the game should work.

The code is decoupled from the plugin definition.  This is useful for any tooling focused applications where you may wish to supply the files at runtime.

## Importing in Godot

The model asset files are imported as a Godot scene for easy extensibility and caching.  Only the highest resolution LOD model is loaded, as it is the most useful for modern contexts.
A wheel model is not supplied in the CDO files, so this addon supplies a simple wheel mesh that matches the fidelity of the loaded models.  It is designed with units in mind to allow for accurate scaling that matches GT2's wheel position metadata in the specified format.
By having all wheel meshes and the LOD mesh as separate instances in a Godot Scene, it allows for extensibility of the car.  You can easily add a car to a scene, or even make a wrapper scene/process that will inject physics bodies onto the vehicle so you may drive it.

In addition to the Mesh, the scene file also has embedded all the associated parsed textures required for the model.
While the original textures in the formats are several palettes that can be mapped to 16 bitmap files, the importer takes care to merge these textures into a single RGBA8 buffer with colors already mapped.  This improves portability and material performance thanks to needing less textures to bind.
These materials can be swapped between using a utility function, and are embedded onto the scene using Node Metadata.

The binary `.scn` file can be found in the `.godot/imported` directory of your project.  I have found that on average the `scn` file is about 2x the size of the combined size of the original CDO+CDP files.  It's also smaller than the OBJ+TGA or OBJ+BMP files that you get from other tools, and loading faster in Godot.

## What's lacking

- Illumination textures are missing, so brake lights can not be simulated
- Reflection maps are missing, preventing the car from looking exactly as it does on the Playstation
- Importing all LOD models in case you desire to replicate GT's LOD scaling exactly
