#!/bin/bash

./porky.jl -p avg_1ifb.pdb -v car_vgv_1ifb -o vgv_1ifb -m 30 --script
./porky.jl -p avg_1ifb.pdb -v modes_1ifb -i 1 -o 1_1ifb -m -30 --script
./porky.jl -p avg_1ifb.pdb -v modes_1ifb -i 2 -o 2_1ifb -m -30 --script
./porky.jl -p avg_1ifb.pdb -v modes_1ifb -i 3 -o 3_1ifb -m -30 --script
