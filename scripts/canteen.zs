# fix durability display on Tough As Nails canteens

val canteen = <toughasnails:canteen>;
val waterTypes = ["Water", "Purified Water"] as string[];

for typeId, typeName in waterTypes {
	for swigs in 1 to 4 {
		val baseDamage = 13 - swigs * 4;
		val curCanteen = canteen.withDamage(baseDamage + typeId);
		
		curCanteen.clearTooltip();
		curCanteen.addTooltip(format.white(typeName ~ " Canteen"));
		curCanteen.addShiftTooltip(swigs ~ "/3 swigs");
		curCanteen.addTooltip(format.blue(format.italic("Tough as Nails")));
	}
}