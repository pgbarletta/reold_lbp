#!/bin/bash

nohup ANA avg_1ifb.pdb -c cut_beta.cfg -d ../data/full_fit_1ifb.nc -v vol_trj_1ifb &

exit 0
