val chest = <ore:chestWood>;
val wood = <ore:plankWood>;
val log = <ore:logWood>;
val torch = <ore:torch>;
val iron = <ore:ingotIron>;
val ironPlate = <ore:plateIron>;
val gold = <ore:ingotGold>;
val goldPlate = <ore:plateGold>;
val steel = <ore:ingotSteel>;
val steelPlate = <ore:plateSteel>;
val redstone = <ore:dustRedstone>;
val diamond = <minecraft:diamond>;
val netherite = <ore:ingotNetherite>;
val obsidian = <ore:obsidian>;
val glass = <ore:blockGlass>;
val glassPane = <ore:paneGlass>;

val pipe = <inspirations:pipe>;
val tube = <crossroads:fluid_tube>;
val hopper = <minecraft:hopper>;
val basicPCB = <stevescarts:modulecomponents:9>;
val advancedPCB = <stevescarts:modulecomponents:16>;
val tankValve = <railcraft:tank_iron_valve>;
val tankGauge = <railcraft:tank_iron_gauge>;
val wheel = <astikorcarts:wheel>;
val dispenser = <minecraft:dispenser>;
val rail = <railcraft:rail:0>;
val advRail = <railcraft:rail:1>;
val railbed = <railcraft:railbed:0>;


// remove unwanted items

val upgradesToRemove = [2,3,4,5,6,15,16] as int[];
val componentsToRemove = [0,1,2,3,4,5,10,11,12,13,14,15,17,18,19,20,21,22,23,24,25,26,27,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,45,46,47,48,49,60,61,62,63,64,65,80,81,82,83,84] as int[];
val recipesToRemove = [2,3,4,5,6,7,8,9,14,15,26,27,28,29,30,32,36,37,38,39,41,42,43,49,63,64,65,66,67,71,73,79,80,81,84] as int[]; // module recipes specifically

for utr in upgradesToRemove {
	val item = <stevescarts:upgrade>.definition.makeStack(utr);
	mods.jei.JEI.removeAndHide(item);
	recipes.remove(item, false);
}
for ctr in componentsToRemove {
	val item = <stevescarts:modulecomponents>.definition.makeStack(ctr);
	mods.jei.JEI.removeAndHide(item);
	recipes.remove(item, false);
}
for rtr in recipesToRemove {
	recipes.remove(<stevescarts:cartmodule>.definition.makeStack(rtr), false);
}

mods.jei.JEI.removeAndHide(<stevescarts:cartmodule:49>); // chunk loader. Use Railcraft world spikes instead.
mods.jei.JEI.removeAndHide(<stevescarts:blockmetalstorage:*>);
recipes.remove(<stevescarts:blockmetalstorage:*>, false);
recipes.remove(<stevescarts:blockcargomanager>, false); // cargo manager
recipes.remove(<stevescarts:blockjunction>, false);
recipes.remove(<stevescarts:blockadvdetector>, false);
recipes.remove(<stevescarts:modulecomponents:9>, false); // simple PCB. wanted to remove recipe without hiding item

furnace.remove(<stevescarts:modulecomponents:12>); // refined handle
furnace.remove(<stevescarts:modulecomponents:19>); // refined hardener
furnace.remove(<stevescarts:modulecomponents:22>); // reinforced metal
furnace.remove(<stevescarts:modulecomponents:47>); // galgadorian
furnace.remove(<stevescarts:modulecomponents:49>); // enhanced galgadorian


// new recipes

recipes.addShaped("simple_pcb", <stevescarts:modulecomponents:9>, [[redstone,gold,redstone],[gold,iron,gold],[redstone,gold,redstone]]);
recipes.replaceAllOccurences(<minecraft:iron_ingot>, goldPlate, <stevescarts:modulecomponents:16>); // advanced PCB

// blocks
recipes.addShaped("cargo_manager", <stevescarts:blockcargomanager>, [[pipe,hopper,pipe],[chest,redstone,chest],[pipe,hopper,pipe]]);
recipes.addShaped("junction_rail", <stevescarts:blockjunction> * 16, [[rail,redstone,rail],[redstone,railbed,redstone],[rail,redstone,rail]]);
recipes.addShaped("adv_detector_rail", <stevescarts:blockadvdetector> * 16, [[advRail,railbed,advRail],[advRail,<minecraft:light_weighted_pressure_plate>,advRail],[advRail,redstone,advRail]]);

// hulls
recipes.addShaped("wooden_hull", <stevescarts:cartmodule:37>, [[log,null,log],[log,log,log]]);
recipes.addShaped("iron_hull", <stevescarts:cartmodule:38>, [[ironPlate,null,ironPlate],[ironPlate,ironPlate,ironPlate]]);
recipes.addShaped("reinforced_hull", <stevescarts:cartmodule:39>, [[steelPlate,null,steelPlate],[steelPlate,steelPlate,steelPlate]]);
recipes.addShaped("galgadorian_hull", <stevescarts:cartmodule:81>, [[obsidian,null,obsidian],[obsidian,netherite,obsidian]]);

// chest modules
recipes.addShaped("side_chests", <stevescarts:cartmodule:2>, [[chest,pipe,chest]]);
recipes.addShaped("top_chest", <stevescarts:cartmodule:3>, [[chest,wood,chest],[null,pipe,null],[null]]);
recipes.addShaped("front_chest", <stevescarts:cartmodule:4>, [[wood,chest,wood],[wood,pipe,wood],[null]]);
recipes.addShaped("internal_chest", <stevescarts:cartmodule:5>, [[null],[pipe],[chest]]);
recipes.addShaped("extracting_chest", <stevescarts:cartmodule:6>, [[chest,chest,chest],[chest,pipe,chest],[chest,chest,chest]]);

// tank modules
recipes.addShaped("internal_tank", <stevescarts:cartmodule:63>, [[null],[tankValve],[tankGauge]]);
recipes.addShaped("side_tanks", <stevescarts:cartmodule:64>, [[tankGauge,tankValve,tankGauge]]);
recipes.addShaped("top_tank", <stevescarts:cartmodule:65>, [[tankGauge,tankGauge,tankGauge],[null,tankValve,null],[null]]);
recipes.addShaped("advanced_tank", <stevescarts:cartmodule:66>, [[tankGauge,tankGauge,tankGauge],[tankGauge,tankValve,tankGauge],[tankGauge,tankGauge,tankGauge]]);
recipes.addShaped("front_tank", <stevescarts:cartmodule:67>, [[tankGauge],[tankValve],[tankGauge]]);
recipes.addShaped("open_tank", <stevescarts:cartmodule:73>, [[glass,null,glass],[tankGauge,tankValve,tankGauge],[null]]);

// drills
recipes.addShaped("iron_drill", <stevescarts:cartmodule:42>, [[iron,null],[<ore:blockIron>,iron],[iron,null]]);
recipes.addShaped("basic_drill", <stevescarts:cartmodule:8>, [[steel,null],[<stevescarts:cartmodule:42>,steel],[steel,null]]);
recipes.addShaped("hardened_drill", <stevescarts:cartmodule:43>, [[diamond,null],[<stevescarts:cartmodule:8>,diamond],[diamond,null]]);
recipes.addShaped("galgadorian_drill", <stevescarts:cartmodule:9>, [[obsidian,null],[<stevescarts:cartmodule:43>,netherite],[obsidian,null]]);

// woodcutters
recipes.addShaped("basic_woodcutter", <stevescarts:cartmodule:15>, [[steel,steel,steel],[null,<thermalfoundation:tool.axe_steel:*>,null],[basicPCB,gold,basicPCB]]);
recipes.addShaped("hardened_woodcutter", <stevescarts:cartmodule:79>, [[diamond,diamond,diamond],[null,<stevescarts:cartmodule:15>,null],[basicPCB,goldPlate,basicPCB]]);
recipes.addShaped("galgadorian_woodcutter", <stevescarts:cartmodule:80>, [[obsidian,netherite,obsidian],[null,<stevescarts:cartmodule:79>,null],[advancedPCB,goldPlate,advancedPCB]]);

// farmers
recipes.addShaped("basic_farmer", <stevescarts:cartmodule:14>, [[steel,steel,steel],[null,<thermalfoundation:tool.hoe_steel:*>,null],[basicPCB,gold,basicPCB]]);
recipes.addShaped("galgadorian_farmer", <stevescarts:cartmodule:84>, [[obsidian,netherite,obsidian],[null,<stevescarts:cartmodule:14>,null],[advancedPCB,goldPlate,advancedPCB]]);

// shooters
recipes.addShaped("shooter", <stevescarts:cartmodule:28>, [[redstone,dispenser,redstone],[dispenser,basicPCB,dispenser],[redstone,dispenser,redstone]]);
recipes.addShaped("advanced_shooter", <stevescarts:cartmodule:29>, [[null,<minecraft:observer>,null],[null,<stevescarts:cartmodule:28>,pipe],[steel,advancedPCB,steel]]);

// other modules
recipes.addShaped("torch_placer", <stevescarts:cartmodule:7>, [[torch,torch,torch],[iron,iron,iron],[torch,torch,torch]]);
recipes.addShaped("brake_handle", <stevescarts:cartmodule:26>, [[null,null,<ore:leather>],[iron,<crossroads:axle>,null],[redstone,iron,null]]);
recipes.addShaped("advanced_control_system", <stevescarts:cartmodule:27>, [[null,<ore:paneGlass>,null],[redstone,wheel,redstone],[iron,iron,<stevescarts:cartmodule:26>]]);
recipes.addShaped("cleaning_machine", <stevescarts:cartmodule:30>, [[pipe,hopper,pipe],[pipe,redstone,pipe],[pipe,null,pipe]]);
recipes.addShaped("divine_shield", <stevescarts:cartmodule:32>, [[obsidian,steelPlate,obsidian],[steelPlate,diamond,steelPlate],[obsidian,steelPlate,obsidian]]);
recipes.addShaped("invisibility_core", <stevescarts:cartmodule:36>, [[glassPane,<primitivemobs:camouflage_dye>,glassPane],[glassPane,<minecraft:ender_eye>,glassPane],[glassPane,<minecraft:golden_carrot>,glassPane]]);
recipes.addShaped("colorizer", <stevescarts:cartmodule:41>, [[<ore:dyeRed>,<ore:dyeGreen>,<ore:dyeBlue>],[iron,redstone,iron],[null,iron,null]]);
recipes.replaceAllOccurences(<ore:fenceWood>, <minecraft:iron_bars>, <stevescarts:cartmodule:57>); // cage
recipes.addShaped("liquid_cleaner", <stevescarts:cartmodule:71>, [[tube,tankValve,tube],[tube,redstone,tube],[tube,null,tube]]);
recipes.replaceAllOccurences(<stevescarts:modulecomponents:45>, <minecraft:ender_eye>, <stevescarts:cartmodule:83>); // ore extractor
recipes.replaceAllOccurences(<stevescarts:modulecomponents:84>, <minecraft:shears:*>, <stevescarts:cartmodule:85>); // lawnmower


// some simple replacements for various materials

recipes.replaceAllOccurences(<stevescarts:modulecomponents:22>, steel);	// reinforced metal
recipes.replaceAllOccurences(<stevescarts:modulecomponents:47>, netherite); // galgadorian
recipes.replaceAllOccurences(<stevescarts:modulecomponents:43>, <ore:string>); // fuse

recipes.replaceAllOccurences(iron, steel, <stevescarts:cartmodule:0>);	// coal engine
recipes.replaceAllOccurences(iron, steel, <stevescarts:cartmodule:1>);	// solar engine
recipes.replaceAllOccurences(iron, steel, <stevescarts:cartmodule:56>);	// compact solar engine


// rename some items

<stevescarts:cartmodule:8>.displayName = "Steel Drill";
<stevescarts:cartmodule:9>.displayName = "Netherite Drill";
<stevescarts:cartmodule:14>.displayName = "Steel Farmer";
<stevescarts:cartmodule:15>.displayName = "Steel Wood Cutter";
<stevescarts:cartmodule:38>.displayName = "Iron Hull";
<stevescarts:cartmodule:39>.displayName = "Steel Hull";
<stevescarts:cartmodule:43>.displayName = "Diamond Drill";
<stevescarts:cartmodule:79>.displayName = "Diamond Wood Cutter";
<stevescarts:cartmodule:80>.displayName = "Netherite Wood Cutter";
<stevescarts:cartmodule:81>.displayName = "Netherite Hull";
<stevescarts:cartmodule:84>.displayName = "Netherite Farmer";


// add a crafting-table recipe for a very simple cart

val basicCart = <stevescarts:modularcart>.withTag({Modules: [37, 44, 25] as byte[], CartVersion: 2 as byte, display:{LocName:"Basic Cart"}});
recipes.addShaped("basic_cart", basicCart, [[<stevescarts:cartmodule:25>],[<stevescarts:cartmodule:44>],[<minecraft:minecart>]]);
mods.jei.JEI.addItem(basicCart);