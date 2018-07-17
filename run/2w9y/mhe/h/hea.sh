#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/lbp/top_files/2w9y.prmtop"
inpcrd="../m/mm2w9y.rst7"
restrt="h2w9y.rst7"
refc="../m/mm2w9y.rst7"
mdcrd="h2w9y.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd

exit 0
