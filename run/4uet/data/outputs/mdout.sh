#!/bin/bash

# Extract heat and equil mdout info
perl process_mdout.perl 1pdt.out 2pdt.out 3pdt.out 4pdt.out 5pdt.out 6pdt.out 7pdt.out 8pdt.out 9pdt.out 10pdt.out 11pdt.out 12pdt.out 13pdt.out 14pdt.out 15pdt.out 16pdt.out 17pdt.out 18pdt.out 19pdt.out 20pdt.out 21pdt.out 22pdt.out 23pdt.out 24pdt.out 25pdt.out 26pdt.out 27pdt.out 28pdt.out 29pdt.out 30pdt.out 31pdt.out 32pdt.out 33pdt.out 34pdt.out 35pdt.out 36pdt.out 37pdt.out 38pdt.out 39pdt.out 40pdt.out 41pdt.out 42pdt.out 43pdt.out 44pdt.out


mv summary.ETOT etot.dat
mv summary.EPTOT eptot.dat
mv summary.EKTOT ektot.dat
mv summary.TEMP temp.dat
mv summary.PRES pres.dat
mv summary.VOLUME vol.dat
mv summary.DENSITY density.dat

rm summary*

