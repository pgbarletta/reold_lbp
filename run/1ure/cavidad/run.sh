#!/bin/bash

nohup ANA avg_1ure.pdb -c cut_beta.cfg -d ../data/full_fit_1ure.nc -v vol_trj_1ure &
#nohup ANA 99999_1ure.pdb -c 100_cut_beta.cfg -d ../data/full_fit_1ure.nc -o cav_trj_1ure &

exit 0
