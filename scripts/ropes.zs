val link = <iceandfire:chain_link>;
val strg = <ore:string>;

recipes.remove(<futuremc:chain>);
recipes.addShaped("futuremc_chain", <futuremc:chain> * 3, [
	[link,link,link]]);

<inspirations:rope:1>.displayName = "Climbable Chain";
recipes.remove(<inspirations:rope:1>);
recipes.addShaped("inspirations_chain", <inspirations:rope:1> * 3, [
	[link], 
	[link], 
	[link]]);
	
<inspirations:rope:0>.displayName = "Climbable Rope";
<inspirations:rope:0>.addTooltip("Place on the bottom of a block, or on an existing rope");
recipes.remove(<inspirations:rope:0>);
recipes.addShaped("inspirations_rope", <inspirations:rope:0> * 3, [
	[strg], 
	[strg], 
	[strg]]);

<quark:rope>.displayName = "Thick Climbable Rope";
<quark:rope>.addTooltip("Place on the bottom of a block, or on an existing rope");
recipes.remove(<quark:rope>);
recipes.addShaped("quark_thick_rope", <quark:rope> * 6, [
	[strg,strg,strg], 
	[strg,null,strg], 
	[strg,strg,strg]]);
	
<quark:chain>.displayName = "Vehicle Chain";
<quark:chain>.addTooltip("Links two vehicles together");
recipes.remove(<quark:chain>);
recipes.addShapedMirrored("quark_chain", <quark:chain>, [
	[null,null,link], 
	[null,link,null], 
	[link,null,null]]);

<zawa:thin_rope>.displayName = "Thin Climbable Rope";
<zawa:thin_rope>.addTooltip("Climbable if you have a wall to brace against.");
recipes.remove(<zawa:thin_rope>);
recipes.addShapedMirrored("zawa_thin_rope", <zawa:thin_rope> * 3, [
	[null,null,strg], 
	[null,strg,null], 
	[strg,null,null]]);

<zawa:rope>.displayName = "Double Rope";
<zawa:rope>.addTooltip("Not climbable, but looks good above a tire swing.");
recipes.addShapeless("zawa_double_rope", <zawa:rope>, [<zawa:thin_rope>, <zawa:thin_rope>]);