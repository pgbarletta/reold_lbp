#!/bin/bash

#nohup ANA ../avg_4xcp.pdb -c 1full_mod_alfa_cut.cfg -d ../../data/bufull_fit_4xcp.nc -v 1full_vol_trj_4xcp &
#nohup ANA ../avg_4xcp.pdb -c 2full_mod_alfa_cut.cfg -d ../../data/bufull_fit_4xcp.nc -v 2full_vol_trj_4xcp &
#nohup ANA ../avg_4xcp.pdb -c 3full_mod_alfa_cut.cfg -d ../../data/bufull_fit_4xcp.nc -v 3full_vol_trj_4xcp &
#nohup ANA ../avg_4xcp.pdb -c 4full_mod_alfa_cut.cfg -d ../../data/bufull_fit_4xcp.nc -v 4full_vol_trj_4xcp &

nohup ANA ../avg_4xcp.pdb -c 5full_mod_alfa_cut.cfg -d ../../data/bufull_fit_4xcp.nc -v 5full_vol_trj_4xcp &
ANA ../avg_4xcp.pdb -c 6full_mod_alfa_cut.cfg -d ../../data/bufull_fit_4xcp.nc -v 6full_vol_trj_4xcp

nohup ANA ../avg_4xcp.pdb -c 7full_mod_alfa_cut.cfg -d ../../data/bufull_fit_4xcp.nc -v 7full_vol_trj_4xcp &
ANA ../avg_4xcp.pdb -c 8full_mod_alfa_cut.cfg -d ../../data/bufull_fit_4xcp.nc -v 8full_vol_trj_4xcp

nohup ANA ../avg_4xcp.pdb -c 9full_mod_alfa_cut.cfg -d ../../data/bufull_fit_4xcp.nc -v 9full_vol_trj_4xcp &
ANA ../avg_4xcp.pdb -c 10full_mod_alfa_cut.cfg -d ../../data/bufull_fit_4xcp.nc -v 10full_vol_trj_4xcp

exit 0
