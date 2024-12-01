#loader contenttweaker
#priority 20

import mods.contenttweaker.Item;
import mods.contenttweaker.World;
import mods.contenttweaker.Player;
import mods.contenttweaker.Random;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.MutableItemStack;
import crafttweaker.item.IItemStack;


// add soup cans: non-food items found only in treasure that turn into random soups or stews when right-clicked.


// first, some data

val soups = {
	<item:minecraft:beetroot_soup>: 30,
	<item:minecraft:mushroom_stew>: 30,
	<item:minecraft:rabbit_stew>: 10,
	<item:inspirations:potato_soup>: 10,
	<item:roots:wildroot_stew>: 10,
	<item:mysticalworld:stewed_eggplant>: 10
} as int[IItemStack];


// a function for getting a random soup

function getRandomSoup(world as World, soups as int[IItemStack]) as IItemStack {
	var roll = world.random.nextInt(100); // the weights defined above all add up to 100
	
	// for entry in soups.entrySet {
	for soup, weight in soups {
		roll -= weight;
		if (roll <= 0) {
			return soup;
		}
	}
	
	return <item:minecraft:bowl>; // should never reach this point
}


// define the actual item

val soupCanItem = VanillaFactory.createItem("soup_can");
soupCanItem.maxStackSize = 8;
soupCanItem.rarity = "UNCOMMON";
soupCanItem.itemRightClick = function(stack, world, player, hand) {
	val soup = getRandomSoup(world, soups);
	player.give(soup);
	stack.shrink(1);
	return "SUCCESS";
};
soupCanItem.register();