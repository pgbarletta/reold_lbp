#!/bin/bash
export CUDA_VISIBLE_DEVICES="1"

for i in `cat step.list`
do

    i=`expr $i + 1`
    k=`expr $i - 1`

    echo "Step:" $i

	mdin=pdt.in
	mdout=${i}pdt.out
	prmtop=/home/german/lbp/top_files/4xcp.prmtop
	inpcrd=${k}p4xcp.rst7
	restrt=${i}p4xcp.rst7
	mdcrd=${i}p4xcp.nc

    if [ $i == 1 ]
    then
        inpcrd=../mhe/e/30e4xcp.rst7

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done step:" $i
    else
	    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
	    echo "Done step:" $i
    fi
done
