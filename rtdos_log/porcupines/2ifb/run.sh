#!/bin/bash

./porky.jl -p avg_2ifb.pdb -v car_vgv_2ifb -o vgv_2ifb -m 30 --script
./porky.jl -p avg_2ifb.pdb -v modes_2ifb -i 1 -o 1_2ifb -m -30 --script
./porky.jl -p avg_2ifb.pdb -v modes_2ifb -i 2 -o 2_2ifb -m -30 --script
