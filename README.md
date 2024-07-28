# Into The Wastes
A hostile survival and exploration modpack for Minecraft 1.12.2
by digby

## Minimum system requiements
8GB of RAM
Stable internet connection

## Starting the Server
Run the "RUNME.bat" script to start the server. If the server doesn't start, proceed to the next section.

## Java Troubleshooting
This modpack requires Java 8. If you've installed the client modpack (or any other pre-1.17 modpack) from the CurseForge launcher on this computer, you should already have the right version of Java installed. In this case the RUNME.bat script should work out of the box. 

If not, you may need to download Java 8. Go to https://www.java.com/en/download/manual.jsp, 
download a Java 8 version appropriate to your OS, and install it. Copy the path to the installation's java.exe; it should look something like "C:\Program Files\Java\jre1.8.0_301\bin\java.exe". (The numbers will likely be different.)

Next, open RUNME.bat in a text editor (e.g. Notepad). Replace the path in the second line with the path to your Java 8 install's java.exe, in quotes. Now if you run RUNME.bat, the server should start correctly.

## Generating Your World
We strongly recommend pregenerating your world, as worldgen can take a fair amount of time.

From the server console, run "/pregen start gen radius generation SQUARE 0 0 128" to generate all chunks in a ~2000-block radius around spawn. You can increase the last number or use this command further from spawn to expand the generated area later. 

The late game will take you as far as 8km north or south of spawn, approximately 500 chunks. You can generate the entire thing ahead of time, if you like; however, generating that much land can take a very long time. To do so, run "/pregen start gen radius generation SQUARE 0 0 512".

## Installation Notes
Do not under any circumstances update MixinBootstrap, Entity Culling, or Animania Base. Recent versions contain bugs that prevent the game from starting (MixinBootstrap), break tile entity rendering (Entiy Culling), and disable custom advancements (Animania).

## Further Troubleshooting
If you experience further issues, submit a ticket at https://github.com/Igfig/Into-The-Wastes/issues