#!/bin/bash
export CUDA_VISIBLE_DEVICES="1"
i=28
starting_mdin="0equ.in"

for step in `cat step.list`
do

    i=`expr $i + 1`
    k=`expr $i - 1`

    echo "Step:" $i

	mdin=${i}equ.in
	mdout=${i}equ.out
	prmtop=/home/german/lbp/top_files/4xcp.prmtop
	inpcrd=${k}e4xcp.rst7
	restrt=${i}e4xcp.rst7
	mdcrd=${i}e4xcp.nc



    if [ $i == 1 ]
    then
        inpcrd=../h/h4xcp.rst7
        refc=../h/h4xcp.rst7
		restrt=${i}e4xcp.rst7

        # On the 1st step: mdin = starting_mdin
    	sed "s/50\.0/${step}/" $starting_mdin > $mdin

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd
        echo "Done step:" $i
    elif [[ $i == 30 || $i == 31 ]]
    then
        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done last step:" $i
	else
    	refc=${k}e4xcp.rst7

        # On the 1st step: mdin = starting_mdin
	    sed "s/50\.0/${step}/" $starting_mdin > $mdin

	    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd
	    echo "Done step:" $i
    fi
done
