import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val items = itemUtils.getItemsByRegexRegistryName(".*") as IItemStack[];

for item in items {
    if (item.isFood) {
		item.maxStackSize = 8;
    }
}

function setStackSize(entry as IOreDictEntry, size as int) as bool {
	val keepStacked = ["Cactus", "Slime", "Prismarine", "Glass", "Mud", "Wood", "Wool", "wool", "Rock", "charred", "frozen", "Clay", "Sand", "Stone", "Brick", "Meat", "Goldenrod"] as string[]; // for some reason this definition has to be inside the function or it breaks?
	
	for ks in keepStacked {
		if (entry.name has ks) {
			print("Keeping stack size for oredict " ~ entry.name);
			return false;
		}
	}
	
	print("Updating stack sizes for oredict " ~ entry.name);

	for item in entry.items {
		if (item.maxStackSize > size) {
			print("Setting stack size for item" ~ item.name ~ " to " ~ size);
			item.maxStackSize = size;
		} else {
			print("Keeping stack size for item" ~ item.name ~ " (" ~ item.maxStackSize ~ ")");
		}
	}
	return true;
}

for entry in oreDict {

	if (entry.name has "ore") {
		setStackSize(entry, 16);
	} else if (entry.name has "flour") {
		setStackSize(entry, 16);
	} else if (entry.name has "ingot") {
		setStackSize(entry, 16);
	} else if (entry.name has "dust") {
		setStackSize(entry, 16);
	} else if (entry.name has "plate") {
		setStackSize(entry, 16);
	} else if (entry.name has "block") {
		setStackSize(entry, 4);
	} else if (entry.name has "gear") {
		setStackSize(entry, 16);
	} else if (entry.name has "crop") {
		setStackSize(entry, 16);
	} else if (entry.name has "coal") {
		setStackSize(entry, 16);
	} else if (entry.name has "fuel") {
		setStackSize(entry, 16);
	} else if (entry.name has "crystal") {
		setStackSize(entry, 16);
	}else if (entry.name has "clathrate") {
		setStackSize(entry, 16);
	} else if (entry.name has "rod") {
		setStackSize(entry, 16);
	} else if (entry.name has "substance") {
		setStackSize(entry, 16);
	} else if (entry.name has "sugar") {
		setStackSize(entry, 16);
	} else {
		print("Keeping stack size for oredict " ~ entry.name);
	}
}

// maybe blockQuartz and blockGlowstone should stack better?

// need to manually add mystical world copper and such to the dicts 

// Or maybe I should just add all blocks and ingots and such to some oredicts after all.  There're listAllmetalingots and listAllmetalblocks entries, though they only have gold and iron right now