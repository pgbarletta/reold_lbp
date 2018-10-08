from pymol.cgo import *
from pymol import cmd

cmd.load("avg_1ael.pdb")
cmd.load("disp_1ael.pdb")
cmd.load("modevectors.py")
modevectors("avg_1ael", "disp_1ael", outname="modevectors", head=1.0, tail=0.3, headrgb = "1.0, 1.0, 0.0", tailrgb = "1.0, 1.0, 0.0") 