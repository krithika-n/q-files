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
    countDict:count each group l;
    :raze (value countDict),'(key countDict)
    }

// DOT product
// (list1),'(list2)

//Modified run-length encoding.
encodeModified:{}