#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/lbp/top_files/1ure.prmtop"
inpcrd="m1ure.rst7"
restrt="mm1ure.rst7"
refc="1ure.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
