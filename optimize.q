// Consider a table ([]x;y;z) where x is an ID column of type long, and y, z are also of type long. This table gets
// updated throughout the day. For historical purposes, we keep all records, but only the latest row for each x is valid
// for business calculations. We are interested in the dot product of y and z for certain values of x. If a value of x
// is missing from the table, then y and z default to 200 and 300, respectively. Write a function with the following
// signature:
//
// @param table {table}  A table containing columns x, y, z.
// @param xVals {long[]} A list of x values (same type as table.x).
// @return      {long}   The dot product of table.y and table.z at the index of the latest match of `x=xVals` for each
//                       `xVals`. Values of `xVals` not appearing in table.x use `y=200` and `z=300`.
//
// Below is a proposed solution to the above problem. Optimize it as much as possible.
// Hint: performance can be tested with \ts.

dotProd:{[table;xVals]
	prods:getProd[table;]each xVals;
    sum prods
    }

getProd:{[table;xVal]
	yVal:getYVal[table;xVal];
	zVal:getZVal[table;xVal];
    yVal*zVal
    }

getYVal:{[table;xVal]
	recs:findRecords[table;xVal];
	$[0=count recs;200;last[recs`y]]
	}

getZVal:{[table;xVal]
	recs:findRecords[table;xVal];
	$[0=count recs;300;last[recs`z]]
	}

findRecords:{[table;xVal] select from table where x=xVal}
