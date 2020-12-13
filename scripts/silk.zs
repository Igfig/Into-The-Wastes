#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

var pBuilder = mods.contenttweaker.MaterialSystem.getPartBuilder();
pBuilder.setName("cloth");
pBuilder.setPartType(MaterialSystem.getPartType("item"));
var clothPart = pBuilder.build();

var silk = MaterialSystem.getMaterialBuilder().setName("Silk").setColor(16774877).build();

var silkCloth = silk.registerPart(clothPart);
silkCloth.setColorized(true);

var silkArmor = silk.registerPart("armor");
silkArmor.setColorized(true);

var silkArmorData = silkArmor.getData();
silkArmorData.addDataValue("durability", "10");
silkArmorData.addDataValue("enchantability", "20");
silkArmorData.addDataValue("reduction", "1,2,3,1");
silkArmorData.addDataValue("toughness", "1");