// linear regression co-efficients are given by b= (X′X)−1X′Y 
// X is the matrix of independent variables
// Y is the dependent variable
// X' is X transpose
// (X)-1 is X inverse


// @param table {table}  A table containing 3 or more columns.
// @param depVar {sym} Column name of the dependant variable in symbol format. eg: `measure
// @param indVar {sym[]} List of atleast 2 column names of independant variable in symbol format. eg: `temperature`dew_point
// @return {float[]} coefficient

lrtable:{[table;indVar;depVar]
	tempMat:table[indVar];
	size:count first tempMat;
	ones:size#1;
	tempMat:tempMat,:ones; // adding row of 1s
	xt:-1 rotate tempMat;
	x:flip xt;
	y:table[depVar];
	lrcoeff[x;y]
	}


// @param table {table}  A table containing 3 or more columns.
// @param dependantVariable {sym} Column name of the dependant variable in symbol format. eg: `measure
// @param independantVariable {sym[]} List of atleast 2 column names of independant variable in symbol format. eg: `temperature`dew_point
// @return {float[]} coefficient

lrcoeff:{[x;y]
	x:"f"$x; // casting values in X to be float
	y:"f"$y; // casting values in Y to be float
	xt:flip x;
	beta: (inv xt mmu x) mmu xt mmu y
	}
