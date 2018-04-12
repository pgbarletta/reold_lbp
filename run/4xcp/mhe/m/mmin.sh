#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/lbp/top_files/4xcp.prmtop"
inpcrd="m4xcp.rst7"
restrt="mm4xcp.rst7"
refc="4xcp.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
