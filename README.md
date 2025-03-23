# Into The Wastes
A hostile survival and exploration modpack for Minecraft 1.12.2
by digby

## Generating Your World
We strongly recommend pregenerating your world, as worldgen can take a fair amount of time.

In singleplayer, it's best to use the GUI; click the Preview button on the Create New World screen, optionally increase the generation radius, and hit Start. Once it's finished generating, hit Done and go to your world.

In multiplayer, run "/pregen start gen radius generation SQUARE 0 0 128" to generate all chunks in a ~2000-block radius. You can increase the last number or use this command further from spawn to expand the generated area.

Later, run "/pregen start gen radius generation SQUARE ~ ~ 64" to generate another ~1000 blocks around your current location.

The command works in singleplayer too, as long as you have commands enabled.

The late game will take you as far as 8km north or south of spawn, approximately 500 chunks. You can generate the entire thing ahead of time, if you like; however, generating that much land can take a very long time.

## Troubleshooting
If the game seems choppy or laggy, increase the allocated RAM to at least 6GB. In the Curseforge launcher: open the Into the Wastes profile, click the three dots in the top right corner, then select Profile Options in the dropdown. Uncheck the "Use System Memory Settings" checkbox, set the slider to at least 6400MB, and click the Done button.

If you experience further issues, submit a ticket at https://github.com/Igfig/Into-The-Wastes/issues

## Installation Notes
Do not under any circumstances update MixinBootstrap, Entity Culling, or Animania Base. Recent versions contain bugs that prevent the game from starting (MixinBootstrap), break tile entity rendering (Entiy Culling), and disable custom advancements (Animania).

## Optifine
You will need to install Optifine separately, due to copyright restrictions. Download https://optifine.net/adloadx?f=OptiFine_1.12.2_HD_U_G5.jar and place the file in the /mods folder.

## Respawning
If you don't like the random-respawn mechanic, an admin can turn it off for all currently logged-in players with the command
```
/scoreboard players set @a teleportOnDeath 0
```
To change it for just one player, replace the `@a` with the player's name.

To turn random respawn back on, replace the `0` with a `1`.