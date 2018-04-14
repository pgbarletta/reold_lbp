#!/bin/bash
i=28
starting_mdin="0equ.in"

for step in `cat step.list`
do

    i=`expr $i + 1`
    k=`expr $i - 1`

    echo "Step:" $i

	mdin=${i}equ.in
	mdout=${i}equ.out
	prmtop=/home/german/lbp/top_files/4uet.prmtop
	inpcrd=${k}e4uet.rst7
	restrt=${i}e4uet.rst7
	mdcrd=${i}e4uet.nc


    if [ $i == 1 ]
    then
        # On the 1st step: mdin = starting_mdin
    	sed "s/50\.0/${step}/" $starting_mdin > $mdin

        inpcrd=../h/h4uet.rst7
        refc=../h/h4uet.rst7
		restrt=${i}e4uet.rst7

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd
        echo "Done step:" $i
    elif [[ $i == 30 || $i == 31 ]]
    then
        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd
        echo "Done last step:" $i
	else
        # On the 1st step: mdin = starting_mdin
    	sed "s/50\.0/${step}/" $starting_mdin > $mdin

    	refc=${k}e4uet.rst7
	    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd
	    echo "Done step:" $i
    fi
done
