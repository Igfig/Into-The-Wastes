recipes.remove(<effortlessbuilding:reach_upgrade1>);
recipes.remove(<effortlessbuilding:reach_upgrade2>);
recipes.remove(<effortlessbuilding:reach_upgrade3>);

val tin = <ore:blockTin>;
val silver = <ore:blockSilver>;
val platinum = <ore:blockPlatinum>;

recipes.addShaped("reach upgrade 1", <effortlessbuilding:reach_upgrade1>, [
	[tin,tin, tin],
	[tin,null,tin],
	[tin,tin, tin]]);
recipes.addShaped("reach upgrade 2", <effortlessbuilding:reach_upgrade2>, [
	[silver,silver,silver],
	[silver, null, silver],
	[silver,silver,silver]]);
recipes.addShaped("reach upgrade 3", <effortlessbuilding:reach_upgrade3>, [
	[platinum,platinum,platinum],
	[platinum,  null,  platinum],
	[platinum,platinum,platinum]]);
// might add something else in the middle of each, idk