import crafttweaker.item.IItemStack;

<inspirations:redstone_torch_lever>.addTooltip("Toggles when powered from front or side");
<inspirations:redstone_charger>.addTooltip("Produces a redstone pulse");
<inspirations:redstone_barrel>.addTooltip("Fill with up to 15 redstone dust.");
<inspirations:redstone_barrel>.addTooltip("Outputs redstone level to comparator.");
<inspirations:barometer>.addTooltip("Fills at lower elevations, and raises at higher ones"); 
<inspirations:photometer>.addTooltip("Shows block light level");

<inspirations:pipe>.displayName = "Hopper Pipe";
<inspirations:pipe>.addTooltip("Like a small hopper, but it");
<inspirations:pipe>.addTooltip("only pulls from other hoppers");
mods.jei.JEI.addDescription(<inspirations:pipe>, "Extends a hopper's output indefinitely.", "Only takes input from other hoppers or hopper pipes.", "Like a hopper, outputs to the block it was placed against. Start a line of pipes at your destination, placing the actual hopper last.", "You can rotate the pipe's output with a wrench.", "Only outputs down or sideways. If you want to move items upwards, use an item chute.");

val crooks = [<inspirations:wooden_crook>, <inspirations:stone_crook>, <inspirations:bone_crook>, <inspirations:blaze_crook>, <inspirations:wither_crook>] as IItemStack[];
for crook in crooks {
	crook.addTooltip("Increases sapling drops when breaking leaves");
	crook.addTooltip("Right-click on mobs to pull them");
}

<inspirations:blaze_crook>.addTooltip("Sets target on fire");
<inspirations:wither_crook>.addTooltip("Applies Wither to target");

// hide Inspirations wither bone; we aleady have a better version from another mod
mods.jei.JEI.removeAndHide(<inspirations:materials:7>);
