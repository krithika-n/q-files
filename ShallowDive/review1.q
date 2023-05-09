// P01 find  last box of list
lastElement:{[l] :last l}
lastElement:{[l] :l[-1 + count l]}

// P02 Find the last but one box of a list
lastButOne:{[l] :-2#l}
lastButOneOnly:{[l]: l[-2 + count l]}
lastButOneOnly:{[l]: (-2#l)[0]}
lastButOneOnly:{[l]: (-2#l)@0}

// P03  Find the K'th element of a list.
elementAt:{[k;l] :l[k-1]}

// p04 Find number of elements of list
countNum:{[l] count l}

// P05 reverse list
reverseList:{[l] :reverse l}
reverseList:{[l] {[x;y] y,x}/[l]}
reverseList:{[l] last {[x;y] y,x}\[l]}

// P06 check for palindrome
isPalindrome:{[l] :l~reverse l}

// P07 flatten a nested list structure, recrusively
flatten:{[l] :[raze/]l}

// P08 Eliminate consecutive duplicates of list elements.
replaceConsecutiveDuplicates:{[l] :l@{enlist where 1 = x}differ l}
replaceConsecutiveDuplicates:{[l] :l@{(), where 1 = x}differ l}

// P09 Pack consecutive duplicates of list elements into sublists
packConsecutive:{[l] cut[{(), where x = 1}differ l;l]}
packConsecutive:{[l]
    indices:{(), where x = 1}differ l;
    :indices cut l
    }

// P10 Run-length encoding of a list.
runLengthEncoding:{[l]
    packed:packConsecutive(list);
    :(count each packed),'(first each packed)
    }

// DOT product
// (list1),'(list2)

// P11 Modified run-length encoding.
encodeModified:{[l]
    encoded: runLengthEncoding(l);
    myF:{[x] $[x[0] = 1;x[1];x]};
    :myF each encoded
    }   

// P12 Decode a run-length encoded list.
decode:{[l]
    myF:{$[(count x) = 1;x;x[0]#x[1]]};
    :raze myF each encoded
    }

// P 13  Run-length encoding of a list (direct solution)

// P 14 Duplicate elements of a list
duplicate:{[l] :2#'l}

// P 15 Replicate elements of a list
replicate:{[l;n] n#'l}

// P 16 Drop every nth element
dropNth:{[list;n]
    list@{(), where x <> 0}(1 + til count list) mod n
    }

// P 17 Split a list into two parts; the length of the first part is given.
// using predefined function
split:{[l;n] (0;n) cut l}

// P 18 extract a slice from a list
slice:{[l;i;k] (i-1)_ (k-count l)_l}

// P19 Rotate list n places to left
rotateN:{[l;n] n rotate l}

// P 20 Remove Kth element
removeAt:{[l;k] ((k-1)#l),((k)_l)}


// P21 insert at K
insertAt:{[l;k;e] (k#l),(e),((k)_l)}

// P 22 list containing all integers within a given range
range:{[i;k] i + til (1+k-i)}

// P23 Extract a given number of randomly selected elements from list
randSelect:{[l;n] (0-n)?l}

// P 24 Draw N different random numbers from set 1...M
lottoSelect:{[n;m] (0-n)? 1+til m+1}

// P 25 
randPermute:{[l] 0N?l}

// P 26 Generate a random permutation of the elements of a list.

// P 27 

// P 28a We suppose that a list contains elements that are lists themselves. 
// The objective is to sort the elements of this list according to their length.
lsort:{[l] :l@iasc count each l}

// P28b we suppose that a list contains elements that are lists themselves. 
// But this time the objective is to sort the elements of this list according to their length frequency; 
// i.e., in the default, where sorting is done ascendingly, lists with rare lengths are placed first, others with a more frequent length come later.
lfsort:{[l] 
    }

// P 29 N/A
// P 30 N/A

// P 31 Determine whether a given integer number is prime
isPrime:{[n] all n mod 1+til ceiling n%2}

// P 32 Determine the greatest common divisor of two positive integer numbers.
// Use Euclid's algorithm.
// function euclidAlgo(a, b)
//    if b = 0
//       return a
//   else
//      return gcd(b, a mod b)

gcd:{[n1;n2]
    $[n2=0; n1; .z.s[n2, n1 mod n2]]
    }


// P 33 check if 2 numbers are co prime
coPrime:{[n1;n2] 1 = gcd[n1;n2]}

// P 34