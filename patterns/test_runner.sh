#!/bin/bash

#if [ "$1" == "" ] || [ "$2" == "" ]; then
#    echo "./$0 <filename> <loops count | generic>"
#fi;

function run_item {
    file=$1;
    count=$2;
    echo "Running $file for -loops=$count"
    #swift $file -loops="$count" &> "$file-$count.LOG" ;
};

# Execute must be called with argument #NIGHTLY or #WEEKLY
function execute {
    echo $1
    for file in `ls *swift`
    do
	loops=`grep "$1" $file`
	loops=($loops);
	if [ $? -eq 0 ] # If the file has #weekly or #nightly tags
	then
	    for loop in "${loops[@]}"
	    do
		if [[ "$loop" =~ ^[0-9]+$ ]];
		then
		    echo "============================================================"
		    time run_item $file $loop;
		fi
	    done
	else            # If the file doesn't have #weekly or #nightly tags
	    echo "============================================================"
	    echo "Skipping file : $file";
	fi
    done;
    echo "===========================END=============================="
}

if   [ "$1" == "nightly" ]
then
    execute "#NIGHTLY"
elif [ "$1" == "weekly" ]
then
    execute "#WEEKLY"
else
    echo "Usage: test_runner.sh <nightly|weekly>";
fi
