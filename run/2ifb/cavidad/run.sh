#!/bin/bash

nohup ANA avg_2ifb.pdb -c cut_beta.cfg -d ../data/full_fit_2ifb.nc -v vol_trj_2ifb &

exit 0
