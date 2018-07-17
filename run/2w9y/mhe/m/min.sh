#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/lbp/top_files/2w9y.prmtop"
inpcrd="2w9y.rst7"
restrt="m2w9y.rst7"
refc="2w9y.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
