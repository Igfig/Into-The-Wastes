#loader contenttweaker
#priority 2

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;


// create silk material

val silk = MaterialSystem.getMaterialBuilder().setName("Silk").setColor(16774877).build();


// silk cloth item

val pBuilder = mods.contenttweaker.MaterialSystem.getPartBuilder();
pBuilder.setName("cloth");
pBuilder.setPartType(MaterialSystem.getPartType("item"));
val clothPart = pBuilder.build();

val silkClothPart = silk.registerPart(clothPart);
silkClothPart.setColorized(true);


// silk armor

val silkArmor = silk.registerPart("armor");
silkArmor.setColorized(true);

val silkArmorData = silkArmor.getData();
silkArmorData.addDataValue("durability", "10");
silkArmorData.addDataValue("enchantability", "20");
silkArmorData.addDataValue("reduction", "1,2,3,1");
silkArmorData.addDataValue("toughness", "1");