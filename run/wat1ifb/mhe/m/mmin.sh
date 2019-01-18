#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/lbp/top_files/wat1ifb.prmtop"
inpcrd="mwat1ifb.rst7"
restrt="mmwat1ifb.rst7"
refc="wat1ifb.rst7"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc

exit 0
