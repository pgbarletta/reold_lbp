#!/bin/bash

ANA cut_99999_4xcp.pdb -c alfa_cut.cfg -d ../data/full_fit_4xcp.nc -v vol_trj_4xcp
#ANA full_avg_4xcp.pdb -c 100_alfa.cfg -d ../data/full_fit_4xcp.nc -o cav_trj_4xcp

exit 0
