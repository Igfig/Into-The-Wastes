var silk = <materialpart:silk:cloth>;
var stringItem = <minecraft:string>;

recipes.addShaped(silk, [
	[stringItem, stringItem, stringItem],
	[stringItem, stringItem, stringItem], 
	[stringItem, stringItem, stringItem]]);

 recipes.addShaped(<materialpart:silk:chest>, [
	[silk, null, silk],
	[silk, silk, silk],
	[silk, silk, silk]]);
recipes.addShaped(<materialpart:silk:feet>, [
	[silk, null, silk], 
	[silk, null, silk]]);
recipes.addShaped(<materialpart:silk:legs>, [
	[silk, silk, silk],
	[silk, null, silk], 
	[silk, null, silk]]);
recipes.addShaped(<materialpart:silk:head>, [
	[silk, silk, silk],
	[silk, null, silk]]); 