import mods.cuisine.Mortar;
import mods.cuisine.Mill;

// UniDict doesn't fix all the salt recipes, so we do it manually here.

// Animania salt recipe
mods.jei.JEI.addDescription(<crossroads:dust_salt>, "You can also create salt by letting water evaporate in a cheese mold.");

// Cuisine salt recipes
Mortar.remove("cuisine:salt");
Mill.remove("cuisine:salt");
Mortar.add([<ore:dustCrudesalt>], <crossroads:dust_salt>, 5);
Mill.add(<ore:dustCrudesalt>, null, <crossroads:dust_salt>, null);

// Oredict
<ore:listAllspice>.add(<crossroads:dust_salt>);

// There's also a grindstone recipe for salt in the grindstone.zs file.