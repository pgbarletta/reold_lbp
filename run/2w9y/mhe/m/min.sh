#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/lbp/top_files/4uet.prmtop"
inpcrd="4uet.rst7"
restrt="m4uet.rst7"
refc="4uet.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
