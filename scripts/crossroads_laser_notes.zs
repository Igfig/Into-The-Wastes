// laser magic

<ore:laserFuel>.addAll(<ore:dustGlowstone>);
<ore:laserFuel>.addAll(<ore:dustRedstone>);
<ore:laserFuel>.addAll(<ore:dustSalt>);
<ore:laserFuel>.addAll(<ore:dustAlcSalt>);
<ore:laserFuel>.addAll(<ore:coal>);
<ore:laserFuel>.addAll(<ore:charcoal>);
<ore:laserFuel>.addAll(<ore:dustSulfur>);
<ore:laserFuel>.add(<crossroads:solid_quicksilver>);

<ore:dustGlowstone>.addTooltip(format.red("1 energy"));
<ore:dustGlowstone>.addTooltip(format.green("1 potential"));
<ore:dustGlowstone>.addTooltip(format.blue("1 stability"));
<ore:dustRedstone>.addTooltip(format.red("24 energy"));
<ore:dustRedstone>.addTooltip(format.green("36 potential"));
<ore:dustSalt>.addTooltip(format.green("24 potential"));
<ore:dustSalt>.addTooltip(format.blue("36 stability"));
<ore:dustAlcSalt>.addTooltip(format.blue("60 stability"));
<ore:coal>.addTooltip(format.red("36 energy"));
<ore:coal>.addTooltip(format.green("24 potential"));
<ore:charcoal>.addTooltip(format.red("36 energy"));
<ore:charcoal>.addTooltip(format.green("24 potential"));
<ore:dustSulfur>.addTooltip(format.red("60 energy"));
<crossroads:solid_quicksilver>.addTooltip(format.green("60 potential"));

<crossroads:color_chart>.addTooltip("Shows magical elements you've discovered");
<crossroads:color_chart>.addTooltip("Right-click a beam-emitting block with an OmniMeter to see the last element it emitted");

<crossroads:arcane_extractor>.addTooltip("Insert $laserFuel items to emit a beam of magic");
mods.jei.JEI.addDescription(<crossroads:arcane_extractor>, "Type $laserFuel in JEI to see all valid fuels.", "Items must be inserted with a hopper or similar device.", "Each item produces a beam for 5 ticks.", "(Hoppers transfer one item every 8 ticks, which is why the beam appears to flicker.)");

<crossroads:master_axis_crystal>.addTooltip("Manipulates rotational energy when hit by a beam of magic");
mods.jei.JEI.addDescription(<crossroads:master_axis_crystal>, "Each type of beam produces a different effect, though most impart momentum in some way.", "See the Technician's Manual for details.");

<crossroads:lens_holder>.addTooltip("Right-click to insert an emerald, ruby, diamond, or Pure Quartz.");
<crossroads:lens_holder>.addTooltip("Filters out magic of any color not matching the gem.");

<crossroads:small_quartz_stabilizer>.addTooltip("Absorbs and re-emits magical beams");
<crossroads:small_quartz_stabilizer>.addTooltip("Emits a constant 6-power beam instead of a pulsing one");

<crossroads:large_quartz_stabilizer>.addTooltip("Absorbs and re-emits magical beams");
<crossroads:large_quartz_stabilizer>.addTooltip("Emits a constant 15-power beam instead of a pulsing one");

<crossroads:arcane_reflector>.addTooltip("Redirects magical beams out its front (octagonal) side");
<crossroads:arcane_reflector>.addTooltip("Multiple beams of magic will be combined into one");

<crossroads:crystalline_prism>.addTooltip("Splits magical beams hitting an input (yellow) side into their component colors");

<crossroads:beam_splitter_basic>.addTooltip("Splits magical beams hitting any side into equal smaller beams going up and down");

<crossroads:beam_splitter>.addTooltip("Splits magical beams hitting any side into smaller beams going up and down, with sizes based on redstone signal");

<crossroads:void_crystal>.addTooltip("Place in a Lens Holder");
<crossroads:void_crystal>.addTooltip("Turns a RIFT beam passing through into VOID");