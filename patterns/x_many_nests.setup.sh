#!/bin/bash

# Controlling variables are these:

LOOP_FOR=10;
LOOP_ITER=10;
SWIFT_CODE=./x_many_nests.swift

if [ "$1" == "" ];then
    ID=38;  # Binary = 10110 for iter for for iter
else
    ID=$1;
fi;

function depth {
    if [ $1 -eq 0 ]; then
	return 0;
    else
	return 1 + depth $($1/2);
    fi;
}

function worker {
    echo "int results[][][][][][];"
    echo ""
    echo "worker(){"
    echo "     tracef(\"Hello\n\");"
    echo "}"
    echo ""
}

function foobar {
    if [ $1 -eq 0 ]; then
	#echo "worker();";
        echo " results[i_1][i_2][i_3][i_4][i_5][i_6] = i_1+i_2+i_3+i_4+i_5+i_6;";
	    return $2;
    elif [ $(($1%2)) -eq 1 ]; then
	    echo "foreach item_$2, i_$2 in [1:loop_for:1] {";
	    foobar $(($1/2)) $(($2+1));
	    echo "}";
    elif [ $(($1%2)) -eq 0 ]; then
	    echo "iterate i_$2 {";
	    foobar $(($1/2)) $(($2+1));
	    echo "} until ( i_$2 < loop_iter );";
    else
	    echo "Something is broken";
    fi;
}

echo "int loop_for  = $LOOP_FOR;"  >> SWIFT_TEMP
echo "int loop_iter = $LOOP_ITER;" >> SWIFT_TEMP
worker $ID                         >> SWIFT_TEMP
foobar $ID 1                       >> SWIFT_TEMP
echo ""                            >> SWIFT_TEMP
t="loop_for-1";
echo "tracef(\"Array start : %i\", results[0][0][0][0][0][0]);"   >> SWIFT_TEMP
echo "tracef(\"Array end   : %i\", results[$t][$t][$t][$t][$t][$t]);"   >> SWIFT_TEMP

mv SWIFT_TEMP $SWIFT_CODE

