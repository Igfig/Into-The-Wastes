// remove pre-dye ingredients from dye oredict
<ore:dye>.remove(<minecraft:dye:0>);
<ore:dyeBlack>.remove(<minecraft:dye:0>);
<ore:dye>.remove(<minecraft:dye:3>);
<ore:dyeBrown>.remove(<minecraft:dye:3>);
<ore:dye>.remove(<minecraft:dye:4>);
<ore:dyeBlue>.remove(<minecraft:dye:4>);
<ore:dye>.remove(<minecraft:dye:15>);
<ore:dyeWhite>.remove(<minecraft:dye:15>);


// add all colored dyes to the dye oredict

<ore:dye>.addAll(<ore:dyeWhite>,<ore:dyeOrange>,<ore:dye>,<ore:dyeMagenta>,<ore:dyeLightBlue>,<ore:dyeYellow>,<ore:dyeLime>,<ore:dyePink>,<ore:dyeGray>,<ore:dyeLightGray>,<ore:dyeCyan>,<ore:dyePurple>,<ore:dyeBlue>,<ore:dyeBrown>,<ore:dyeGreen>,<ore:dyeRed>,<ore:dyeBlack>);


// for some reason the colored water dyes aren't added to the individual dye oredicts until later, so let's add them to the dye oredict right now

for i in 0 to 16 {
	<ore:dye>.add(<inspirations:dyed_bottle>.withDamage(i));
}