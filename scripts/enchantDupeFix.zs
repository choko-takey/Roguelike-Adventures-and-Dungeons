import crafttweaker.event.PlayerAnvilUpdateEvent;

events.onPlayerAnvilUpdate(function(event as PlayerAnvilUpdateEvent) {
	if (event.leftItem.amount > 1 && <minecraft:enchanted_book>.matches(event.leftItem) && <minecraft:enchanted_book>.matches(event.rightItem)) {
		//event.outputItem = <minecraft:air>;
		event.xpCost = 2147483646;
		event.outputItem = <minecraft:book>.withTag({display: {Lore: ["§r§c假设你可以滥用这个bug，那么每次利用它，你都需要达到2147483646级。"], Name: "§o§6寻常的书"}});
	}
});