<stevescarts:blockcartassembler>.addTooltip("Constructor for modular railcarts");
<stevescarts:blockcartassembler>.addTooltip("Requires fuel - by default, only coal or charcoal");

<stevescarts:blockcargomanager>.addTooltip("Loads and unloads items from a Steve's Cart");
<stevescarts:blockcargomanager>.addTooltip("Cart must be on an adjacent Advanced Detector Rail");
<stevescarts:blockcargomanager>.addTooltip("The cart will stop until all transfers are complete");

<stevescarts:blockliquidmanager>.addTooltip("Loads and unloads fluids from a Steve's Cart");
<stevescarts:blockliquidmanager>.addTooltip("Cart must be on an adjacent Advanced Detector Rail");
<stevescarts:blockliquidmanager>.addTooltip("The cart will stop until all transfers are complete");

<stevescarts:blockdistributor>.addTooltip("Place directly above or below a Cargo Manager");
<stevescarts:blockdistributor>.addTooltip("Allows pipes & such to interact with specific inventories in the Manager");
mods.jei.JEI.addDescription(<stevescarts:blockdistributor>, "Note that you have to click the button in the very center of the Cargo Manager's GUI if you want different sides to correspond to different inventories. By default all sides share an inventory.");

<stevescarts:blockactivator>.addTooltip("Activates or deactivates specified modules on a Steve's Cart");
<stevescarts:blockactivator>.addTooltip("Cart must be on an adjacent Advanced Detector Rail");

<stevescarts:blockdetector:*>.addTooltip("Allows complex cart detection logic");
<stevescarts:blockdetector:0>.addTooltip("Outputs result as a redstone signal");
<stevescarts:blockdetector:1>.addTooltip("Outputs only to adjacent detectors");
<stevescarts:blockdetector:2>.addTooltip("Must be under an Advanced Detector Rail");
<stevescarts:blockdetector:2>.addTooltip("Stops cart until condition is true");
<stevescarts:blockdetector:3>.addTooltip("Must be under an Advanced Detector Rail junction");
<stevescarts:blockdetector:3>.addTooltip("Flips junction direction when condition is true");
<stevescarts:blockdetector:4>.addTooltip("Outputs only to adjacent detectors");
<stevescarts:blockdetector:4>.addTooltip("Can also read redstone signals");

mods.jei.JEI.addDescription(<stevescarts:blockdetector:*>, "When placed under an Advanced Detector Rail, allows complex logical conditions on a Steve's Cart passing over the rail.", "Conditions are constructed in the GUI as a tree of Boolean logic statements; drag and drop Module, State, and/or Flow nodes onto the OUT node or any child Flow node.","Can read results from adjacent detectors using the 'Side' Flow node.");

<stevescarts:blockjunction>.addTooltip("Allows steering of Steve's Carts with an Advanced Control System");
<stevescarts:blockjunction>.addTooltip("Hold movement keys while cart is passing over to determine direction");

<stevescarts:blockadvdetector>.addTooltip("Stops Steve's Carts while unpowered, and only Steve's Carts");
<stevescarts:blockadvdetector>.addTooltip("Also interacts with Steve's Carts Detector and Manager blocks");

<stevescarts:modulecomponents:6>.addTooltip("Deployed only via Dynamite Carrier module");

// upgrades
<stevescarts:upgrade:*>.addTooltip("Upgrades an adjacent Cart Assembler");
<stevescarts:upgrade:11>.addTooltip("Insert the cart to be modified in this block, not the Assembler");

// inventory storage
<stevescarts:cartmodule:2>.addTooltip("Cargo capacity: 15 slots");
<stevescarts:cartmodule:3>.addTooltip("Cargo capacity: 18 slots");
<stevescarts:cartmodule:4>.addTooltip("Cargo capacity: 12 slots");
<stevescarts:cartmodule:5>.addTooltip("Cargo capacity: 9 slots");
<stevescarts:cartmodule:6>.addTooltip("Cargo capacity: 72 slots");

// fluid storage
<stevescarts:cartmodule:63>.addTooltip("Liquid capacity: 4,000 mB");
<stevescarts:cartmodule:64>.addTooltip("Liquid capacity: 8,000 mB");
<stevescarts:cartmodule:65>.addTooltip("Liquid capacity: 14,000 mB");
<stevescarts:cartmodule:66>.addTooltip("Liquid capacity: 32,000 mB");
<stevescarts:cartmodule:67>.addTooltip("Liquid capacity: 8,000 mB");
<stevescarts:cartmodule:73>.addTooltip("Liquid capacity: 7,000 mB");

// engines
<stevescarts:cartmodule:44>.addTooltip("Accepts all solid fuels");
<stevescarts:cartmodule:44>.addTooltip("Produces 10 power per second of burn time");
<stevescarts:cartmodule:0>.addTooltip("Accepts all solid fuels");
<stevescarts:cartmodule:0>.addTooltip("Produces 45 power per second of burn time");

<stevescarts:cartmodule:45>.addTooltip("Provides power while in direct sunlight");
<stevescarts:cartmodule:45>.addTooltip("Produces 13 power/second");
<stevescarts:cartmodule:1>.addTooltip("Provides power while in direct sunlight");
<stevescarts:cartmodule:1>.addTooltip("Produces 33 power/second");
<stevescarts:cartmodule:56>.addTooltip("Provides power while in direct sunlight");
<stevescarts:cartmodule:56>.addTooltip("Produces 33 power/second");

<stevescarts:cartmodule:69>.addTooltip("Turns lava into power");
<stevescarts:cartmodule:69>.addTooltip("Produces 25 power/mB");
<stevescarts:cartmodule:70>.addTooltip("Turns lava into power");
<stevescarts:cartmodule:70>.addTooltip("Produces 60 power/mB");
<stevescarts:cartmodule:70>.addTooltip("Also requires coolant (water)");

// drills
<stevescarts:cartmodule:42>.addTooltip("Digs a 3x3 tunnel");
<stevescarts:cartmodule:42>.addTooltip("Mining speed: 1");
<stevescarts:cartmodule:8>.addTooltip("Digs a 3x3 tunnel");
<stevescarts:cartmodule:8>.addTooltip("Mining speed: 6");
<stevescarts:cartmodule:43>.addTooltip("Digs a 5x5 tunnel");
<stevescarts:cartmodule:43>.addTooltip("Mining speed: 10");
<stevescarts:cartmodule:9>.addTooltip("Digs a 9x9 tunnel");
<stevescarts:cartmodule:9>.addTooltip("Mining speed: 50");

// farmers
<stevescarts:cartmodule:14>.addTooltip("Harvests and replants crops within 1 block of the track");
<stevescarts:cartmodule:14>.addTooltip("Storage capacity: 3 slots");
<stevescarts:cartmodule:84>.addTooltip("Harvests and replants crops within 2 blocks of the track");
<stevescarts:cartmodule:84>.addTooltip("Storage capacity: 3 slots");

// woodcutters
<stevescarts:cartmodule:15>.addTooltip("Cuts trees and plants saplings along the track");
<stevescarts:cartmodule:15>.addTooltip("Only plants vanilla saplings");
<stevescarts:cartmodule:15>.addTooltip("Drop rate: 80%");
<stevescarts:cartmodule:79>.addTooltip("Cuts trees and plants saplings along the track");
<stevescarts:cartmodule:79>.addTooltip("Only plants vanilla saplings");
<stevescarts:cartmodule:79>.addTooltip("Drop rate: 100%");
<stevescarts:cartmodule:80>.addTooltip("Cuts trees and plants saplings along the track");
<stevescarts:cartmodule:80>.addTooltip("Only plants vanilla saplings");
<stevescarts:cartmodule:80>.addTooltip("Drop rate: 125%");

// other modules
<stevescarts:cartmodule:7>.addTooltip("Places torches along the track to maintain a specified light level");
<stevescarts:cartmodule:7>.addTooltip("Storage capacity: 3 slots");
<stevescarts:cartmodule:10>.addTooltip("Places tracks in front of the cart");
<stevescarts:cartmodule:10>.addTooltip("Storage capacity: 3 slots");
<stevescarts:cartmodule:11>.addTooltip("Places tracks in front of the cart");
<stevescarts:cartmodule:11>.addTooltip("Storage capacity: 6 slots");
<stevescarts:cartmodule:12>.addTooltip("Places blocks under the rails placed by a railer");
<stevescarts:cartmodule:12>.addTooltip("Only accepts stone, stone bricks, wooden planks, and bricks");
<stevescarts:cartmodule:12>.addTooltip("Storage capacity: 3 slots");
<stevescarts:cartmodule:13>.addTooltip("Removes tracks from the end of the line");
<stevescarts:cartmodule:13>.addShiftTooltip(format.yellow("Requires one chest"));
<stevescarts:cartmodule:16>.addTooltip("Hydrates farmland within 1 block of track");
<stevescarts:cartmodule:16>.addTooltip("Uses water");
<stevescarts:cartmodule:18>.addTooltip("Increases growth rate of crops along the track");
<stevescarts:cartmodule:18>.addTooltip("Uses bone meal");
<stevescarts:cartmodule:19>.addTooltip("Allows precise control of track placement elevation");
<stevescarts:cartmodule:20>.addTooltip("Halts drilling if it would release liquids onto track");
<stevescarts:cartmodule:25>.addTooltip("Permits a passenger");
<stevescarts:cartmodule:26>.addTooltip("Allows passenger to stop and reverse cart manually");
<stevescarts:cartmodule:27>.addTooltip("Allows passenger to stop, steer, speed up, and reverse cart manually");
<stevescarts:cartmodule:27>.addTooltip("Also includes various dashboard readouts");
<stevescarts:cartmodule:28>.addTooltip("Fires arrows in fixed directions");
<stevescarts:cartmodule:28>.addTooltip("Storage capacity: 6 slots");
<stevescarts:cartmodule:29>.addTooltip("Targets and attacks entities with projectiles");
<stevescarts:cartmodule:29>.addTooltip("Needs Entity Detectors to determine targets");
<stevescarts:cartmodule:29>.addTooltip("Needs Projectile modules to shoots projectiles other than arrows");
<stevescarts:cartmodule:29>.addTooltip("Max range: 16m");
<stevescarts:cartmodule:29>.addTooltip("Storage capacity: 6 slots");
<stevescarts:cartmodule:30>.addTooltip("Collects items off the ground within 7m");
<stevescarts:cartmodule:31>.addTooltip("Lights and drops all carried dynamite when cart passes over an Advanced Detector Rail");
<stevescarts:cartmodule:32>.addTooltip("Protects cart from most sources of damage");
<stevescarts:cartmodule:33>.addTooltip("Melts snow layers within 15m of cart");
<stevescarts:cartmodule:34>.addTooltip("Melts snow and ice within 15m of cart");
<stevescarts:cartmodule:36>.addTooltip("Makes cart invisible");
<stevescarts:cartmodule:40>.addTooltip("Allows the cart to play a custom beat");
<stevescarts:cartmodule:41>.addTooltip("Allows customization of minecart color");
<stevescarts:cartmodule:57>.addTooltip("Captures and releases mobs");
<stevescarts:cartmodule:57>.addTooltip("Change mode manually or with a Module Toggler");
<stevescarts:cartmodule:58>.addTooltip("Allows farmer module to plant and harvest nether wart");
<stevescarts:cartmodule:59>.addTooltip("Launches fireworks when cart passes over an Advanced Detector Rail");
<stevescarts:cartmodule:59>.addTooltip("Can assemble fireworks from ingredients");
<stevescarts:cartmodule:68>.addTooltip("Destroys unwanted items while mining (up to 4 types)");
<stevescarts:cartmodule:68>.addTooltip("Consumes 3 mB of lava per item destroyed");
<stevescarts:cartmodule:71>.addTooltip("Collects liquids while mining");
<stevescarts:cartmodule:75>.addTooltip("Allows customization of drilling patterns");
<stevescarts:cartmodule:77>.addTooltip("Allows cart to send power information to Detectors");
<stevescarts:cartmodule:82>.addTooltip("Allows enchantments to be applied to cart tools or shooters");
<stevescarts:cartmodule:82>.addTooltip("Insert enchanted books to apply their effects");
<stevescarts:cartmodule:85>.addTooltip("Breaks grass and flowers within 15m");
<stevescarts:cartmodule:85>.addTooltip("Also shears sheep");
<stevescarts:cartmodule:87>.addTooltip("Automatically crafts a specified recipe from cart storage");
<stevescarts:cartmodule:89>.addTooltip("Allows wood cutters to plant up to 7m away");
<stevescarts:cartmodule:91>.addTooltip("Automatically smelts a specified item from cart storage");
<stevescarts:cartmodule:92>.addTooltip("Automatically crafts a specified recipe from cart storage");
<stevescarts:cartmodule:92>.addTooltip("Gives extra control over quantity and usage of products");
<stevescarts:cartmodule:93>.addTooltip("Automatically smelts a specified item from cart storage");
<stevescarts:cartmodule:93>.addTooltip("Gives extra control over quantity and usage of products");
<stevescarts:cartmodule:94>.addTooltip("Displays specified cart statistics in the world");
<stevescarts:cartmodule:95>.addTooltip("Picks up and stores XP orbs");
<stevescarts:cartmodule:99>.addTooltip("Serves cake");
<stevescarts:cartmodule:101>.addTooltip("Allows randomization of minecart color");