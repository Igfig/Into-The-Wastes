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
	
<inspirations:rope:0>.displayName = "Thick Climbable Rope";
<inspirations:rope:0>.addTooltip("Place on the bottom of a block, or on an existing rope");

<quark:rope>.displayName = "Climbable Rope";
<quark:rope>.addTooltip("Place on the bottom of a block, or on an existing rope");
recipes.remove(<quark:rope>);
recipes.addShaped("zawa_thin_rope", <quark:rope> * 6, [
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

<zawa:rope>.displayName = "Double Rope";
<zawa:rope>.addTooltip("Not climbable, but looks good above a tire swing.");
recipes.addShapeless("zawa_double_rope", <zawa:rope>, [<zawa:thin_rope>, <zawa:thin_rope>]);