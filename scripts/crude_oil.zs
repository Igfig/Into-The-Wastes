#loader contenttweaker
#priority 20

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

// Thermal Foundation crude oil doesn't slow player movement at all, which is both jarring and actively dangerous (if you fall down an oil well).
// Add a new fluid to replace it.

val oil = VanillaFactory.createFluid("crude_oil_2", Color.fromHex("333333"));
oil.colorize = false;
oil.density = 3000;
oil.viscosity = 5000;
oil.stillLocation = "thermalfoundation:blocks/fluid/crude_oil_still";
oil.flowingLocation = "thermalfoundation:blocks/fluid/crude_oil_flow";
oil.register();