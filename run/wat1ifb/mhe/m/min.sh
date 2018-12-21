#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/lbp/top_files/wat1ifb.prmtop"
inpcrd="wat1ifb.rst7"
restrt="mwat1ifb.rst7"
refc="wat1ifb.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc
 
exit 0
