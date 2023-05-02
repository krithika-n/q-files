// Load Readings table into memory

readings:("JJZ";enlist",") 0: `readings.csv;
cols readings: `mid`measure xcol readings; // rename value to val as value is a keyword in q
cols readings:`ts xcols readings; // re-arrange columns to have timestamp as first column
readings: update ts:ts+0D00:00:01 from readings; // off-set timestamp by adding 1 second to match with the timestamps on weather table

// Load Weather table into memory

weather:("PFFJJJFFJJS";enlist",") 0: `weather.csv;

// Join weather data to the readings using timestamp;

newTable: 1!readings lj 1!weather;
newTable:0!newTable