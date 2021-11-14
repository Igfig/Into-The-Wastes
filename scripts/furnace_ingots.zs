import crafttweaker.item.IItemStack;

val ingots = [
	<crossroads:ingot_tin>,
	<iceandfire:silver_ingot>,
	<thermalfoundation:material:128>, // copper
	<thermalfoundation:material:129>, // tin
	<thermalfoundation:material:130>, // silver
	<thermalfoundation:material:131>, // lead
	<thermalfoundation:material:134>, // platinum
	<thermalfoundation:material:136>, // mithril
	<thermalfoundation:material:160>, // steel
	<thermalfoundation:material:161>  // electrum
] as IItemStack[];

for i, ingot in ingots {
	furnace.remove(ingot);
}

