// Assumptions
// the meter id's randomly generated are not already present in the table
// loadTables.q is loaded into memory before calling this function


// @param n {long}  count of the meters that need to be added.
// @return      {table}  extended readings table

extendReadings:{[n]
	meterValueCount:8760; // number of readings per meter per year
	newMids: raze 1_n{(,/) list:meterValueCount#rand 10000}\1;
	freq:0D01; startTime:2013.01.01D01:00:00.000000000;
	newTs: raze 1_n{(,/) list:startTime + freq*til meterValueCount}\1;
	totalNumberNewReadings: `long$n*meterValueCount;
	mean:select avg measure from readings;
	mean:value mean 0;
	mean:`long$mean 0;
	stdDev:select dev measure from readings;
	stdDev:value stdDev 0;
	stdDev:`long$stdDev 0;
	unity:1 -1;
	noise:totalNumberNewReadings?unity;
	newMeasures:totalNumberNewReadings?stdDev; // generating random values according to standard deviation of existing table
	newMeasures:mean+newMeasures * noise; // adding mean to the generated values and some noise
	tempTable:([]ts:newTs;mid:newMids;measure:newMeasures) // creating a tempTable with simulated values
	readings: readings upsert tempTable // appending tempTable to readings
}