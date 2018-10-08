from pymol.cgo import *
from pymol import cmd

cmd.load("avg_4uet.pdb")
cmd.load("disp_4uet.pdb")
cmd.load("modevectors.py")
modevectors("avg_4uet", "disp_4uet", outname="modevectors", head=1.0, tail=0.3, headrgb = "1.0, 1.0, 0.0", tailrgb = "1.0, 1.0, 0.0") 