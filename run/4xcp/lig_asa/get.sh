#!/bin/bash
list=$(<pdbs.list)
for file in $list
do
    echo $file
    freesasa --probe-radius 1.2 -n 100 --n-threads 4  $file 2> /dev/null | grep Total >> lig_asa
done
