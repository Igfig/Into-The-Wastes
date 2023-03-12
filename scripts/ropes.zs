val link = <iceandfire:chain_link>;
val strng = <ore:string>;

recipes.remove(<futuremc:chain>);
recipes.addShaped("futuremc_chain", <futuremc:chain> * 3, [
	[link], 
	[link], 
	[link]]);

<inspirations:rope:1>.displayName = "Climbable Chain";
recipes.remove(<inspirations:rope:1>);
recipes.addShaped("inspirations_chain", <inspirations:rope:1> * 6, [
	[link,link], 
	[link,link], 
	[link,link]]);
	
<inspirations:rope:0>.displayName = "Climbable Rope";
<inspirations:rope:0>.addTooltip("Place on the bottom of a block, or on an existing rope");

<quark:rope>.displayName = "Thick Climbable Rope";
<quark:rope>.addTooltip("Place on the bottom of a block, or on an existing rope");
recipes.remove(<quark:rope>);
recipes.addShaped("quark_thick_rope", <quark:rope> * 3, [
	[strng,strng,strng], 
	[strng,null, strng], 
	[strng,strng,strng]]);
	
<quark:chain>.displayName = "Vehicle Chain";
<quark:chain>.addTooltip("Links two vehicles together");
recipes.remove(<quark:chain>);
recipes.addShaped("quark_chain", <quark:chain>, [
	[null,null,link], 
	[null,link,null], 
	[link,null,null]]);

<zawa:thin_rope>.displayName = "Thin Climbable Rope";
<zawa:thin_rope>.addTooltip("Climbable if you have a wall to brace against.");
recipes.remove(<zawa:thin_rope>);
recipes.addShaped("zawa_thin_rope", <zawa:thin_rope> * 1, [
	[strng], 
	[strng], 
	[strng]]);

<zawa:rope>.displayName = "Double Rope";
<zawa:rope>.addTooltip("Not climbable, but looks good above a tire swing.");
recipes.addShapeless("zawa_double_rope", <zawa:rope>, [<zawa:thin_rope>, <zawa:thin_rope>]);