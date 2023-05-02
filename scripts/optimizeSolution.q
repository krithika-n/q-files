// Assumption: Y and Z are non null for all xVals present in the table.

// @param table {table}  A table containing columns x, y, z.
// @param xVals {long[]} A list of x values (same type as table.x).
// @return      {long}   The dot product of table.y and table.z at the index of the latest match of `x=xVals` for each
//                       `xVals`. Values of `xVals` not appearing in table.x use `y=200` and `z=300`.

dotProd:{[table;xVals]
	Yrecords: value select last y by x from table where x in xVals;
	Zrecords: value select last z by x from table where x in xVals;
	missingCount: (count xVals) - (count Yrecords);
	missingProduct: missingCount*200*300;
	yVals:"f"$Yrecords[`y];
	zVals:"f"$Zrecords[`z];
    missingProduct + `long$yVals mmu zVals
    }
