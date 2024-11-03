#priority 10

// ice oredicts for stacksize purposes
<ore:blockIce>.add(<minecraft:ice>, <minecraft:packed_ice>, <futuremc:blue_ice>);
<ore:itemIce>.add(<iceandfire:dragon_ice>, <toughasnails:ice_cube>);
<ore:ice>.addAll(<ore:blockIce>);
<ore:ice>.addAll(<ore:itemIce>);

// make a rope oredict so you can craft some recipes with any type of rope
<ore:rope>.add(<inspirations:rope>, <quark:rope>, <zawa:thin_rope>);

// the Glass Eye is not a real eye
<ore:eye>.remove(<roots:glass_eye>);