#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/lbp/top_files/wat1ifb.prmtop"
inpcrd="../m/mmwat1ifb.rst7"
restrt="hwat1ifb.rst7"
refc="../m/mmwat1ifb.rst7"
mdcrd="hwat1ifb.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
