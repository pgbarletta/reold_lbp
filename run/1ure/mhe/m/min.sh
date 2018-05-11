#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/lbp/top_files/1ure.prmtop"
inpcrd="1ure.rst7"
restrt="m1ure.rst7"
refc="1ure.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
