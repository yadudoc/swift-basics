#!/bin/bash

case $STRESS in
    "S1")
        FILES=100
        ;;
    "S2")
        FILES=1000
        ;;
    "S3")
        FILES=10000
        ;;
    "S4")
        FILES=10000
        ;;
    *)
        FILES=1000
        ;;
esac

nfiles=${FILES:-10}

rm -rf input
mkdir input
cp $(dirname $GROUP)/data/t? input/
cp $GROUP/getlanduse.pl ./
( cd input
  n=0
  for h in $(seq -w 00 99); do
    for v in $(seq -w 00 99); do
      n=$((n+1))
      if [ $n -gt $nfiles ]; then
        break;
      else
        f=t$(echo $RANDOM | sed -e 's/.*\(.\)/\1/')
        ln $f h${h}v${v}.rgb
      fi
    done
  done
  rm t?
)

#makeinput