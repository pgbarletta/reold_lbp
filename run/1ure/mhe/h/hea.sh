#! /bin/bash

export CUDA_VISIBLE_DEVICES="1"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/lbp/top_files/1ure.prmtop"
inpcrd="../m/mm1ure.rst7"
restrt="h1ure.rst7"
refc="../m/mm1ure.rst7"
mdcrd="h1ure.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
