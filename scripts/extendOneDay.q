// loadTables.q is loaded into memory before calling this function

// CASE 1
// Assuming the weather conditions remain the same and there's not much change, 
// the readings will remain almost the same as the previous day in real life.
// 

extendOneDayWithoutChanges:{
	newTable:select from readings where ts>2013.12.30D23:59:59.000000000;
	newTable:update ts:ts+1D from newTable;
	readings:readings upsert newTable
}

// CASE 2
// Adding random noise to readings

extendOneDayWithNoise:{
	newTable:select from readings where ts>2013.12.30D23:59:59.000000000;
	newTable:update ts:ts+1D from newTable;
	measureList:newTable[`measure]
	unity:1 -1
	noise:125?unity
	newMeasures:10000*125?4
	newMeasures:newMeasures * noise
	newMeasureList: newMeasures + measureList
	delete measure from `newTable
	newTable:update measure:newMeasureList from newTable
	readings:readings upsert newTable;
}

