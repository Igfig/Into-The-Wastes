import crafttweaker.oredict.IOreDictEntry;

val metals = [<ore:ingotCopper>,<ore:ingotTin>,<ore:ingotBronze>] as IOreDictEntry[];
val cobble = <ore:cobblestone>;

for metal in metals {
	recipes.addShaped("rain_collector_" + metal.name, <toughasnails:rain_collector>, [
		[metal,<ore:string>,metal],
		[cobble,<minecraft:bucket>,cobble],
		[cobble,cobble,cobble]]);
}