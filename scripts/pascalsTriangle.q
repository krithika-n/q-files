pascal:{{+':[x,0]}\[x-1;1]}


pascal:{[rows]{+':[x,0]}\[rows-1;1]}


pascal:{[rows]{[seed]+':[seed,0]}\[rows-1;1]}

pascal 5 // prints pascals triangle with 5 rows

/*
Using Each Prior adverb for adding

pascal 5
1
+':1 0 -> 1 1
+':1 1 0 -> 1 2 1
+':1 2 1 0 -> 1 3 3 1
+':1 3 3 1 0 -> 1 4 6 4 1
+':1 4 6 4 1 0 -> 1 5 10 10 5 1
*/