#!/bin/bash
export CUDA_VISIBLE_DEVICES="0"

for i in `cat step.list`
do

    i=`expr $i + 1`
    k=`expr $i - 1`

    echo "Step:" $i

	mdin=pdt.in
	mdout=${i}pdt.out
	prmtop=/home/german/lbp/top_files/1ael.prmtop
	inpcrd=${k}p1ael.rst7
	restrt=${i}p1ael.rst7
	mdcrd=${i}p1ael.nc

    if [ $i == 1 ]
    then
        inpcrd=../mhe/e/30e1ael.rst7

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    else
	    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
	    echo "Done step:" $i
    fi
done
