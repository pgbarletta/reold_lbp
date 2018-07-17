#!/bin/bash

nohup ANA full_avg_4uet.pdb -c alfa.cfg -d ../data/full_fit_4uet.nc -v vol_trj_4uet &
#nohup ANA full_avg_4uet.pdb -c alfa.cfg -d ../data/full_fit_4uet.nc -o trj_cav_4uet &

exit 0
