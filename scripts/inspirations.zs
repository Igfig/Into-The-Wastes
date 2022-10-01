import crafttweaker.item.IItemStack;

<inspirations:redstone_torch_lever>.addTooltip("Toggles when powered from front or side");
<inspirations:redstone_charger>.addTooltip("Produces a redstone pulse");
<inspirations:redstone_barrel>.addTooltip("Fill with up to 15 redstone dust.");
<inspirations:redstone_barrel>.addTooltip("Outputs redstone level to comparator.");
<inspirations:barometer>.addTooltip("Fills at lower elevations, and raises at higher ones"); 
<inspirations:photometer>.addTooltip("Shows block light level");

<inspirations:pipe>.displayName = "Hopper Pipe";
<inspirations:pipe>.addTooltip("Input with a hopper. Output to a container, crucible, or chute.");

val crooks = [<inspirations:wooden_crook>, <inspirations:stone_crook>, <inspirations:bone_crook>, <inspirations:blaze_crook>, <inspirations:wither_crook>] as IItemStack[];
for crook in crooks {
	crook.addTooltip("Increases sapling drops when breaking leaves"); 
}