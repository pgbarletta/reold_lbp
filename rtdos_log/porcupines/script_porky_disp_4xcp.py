from pymol.cgo import *
from pymol import cmd

cmd.load("avg_4xcp.pdb")
cmd.load("disp_4xcp.pdb")
cmd.load("modevectors.py")
modevectors("avg_4xcp", "disp_4xcp", outname="modevectors", head=1.0, tail=0.3, headrgb = "1.0, 1.0, 0.0", tailrgb = "1.0, 1.0, 0.0") 