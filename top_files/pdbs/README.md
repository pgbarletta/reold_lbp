Recorto 4UET y 4XCP y las alineo a la posición 4XCP (p/ no mover el ligando).
4UET:
-----
    cp orig_4uet.pdb 4uet.pdb // y a 4uet le borré todos los hidrógenos con: %g/          H/d
    Después usé ANA p/ renumerar sus átomos y aminoácidos // ANA 4uet.pdb --tool_pdb_norm=as && mv as.pdb 4uet.pdb
    Le cambié el nombre de la cadena de X a A
    pdb4amber -i 4uet.pdb -o h4uet.pdb  --reduce  // elimino todos los archivos salvo h4uet.pdb
    wrote and run "leap_4uet.in". logfile in "log_4uet"

4XCP:
-----
    saco el palmitato lineal y conservo el curvado. 
    a orig_4xcp.pdb resids MSE con HETATM paso a MET y ATOM. La SE pasa a SD
        con elemento S. GLU 46 tenía multiplicidad. Borré la 2da. > 4xcp.pdb
    Después usé ANA p/ renumerar sus átomos y aminoácidos // ANA 4xcp.pdb --tool_pdb_norm=as && mv as.pdb 4xcp.pdb
    copio el palmitato de 4xcp.pdb > plm.pdb
    no tenía hidrógenos //  y si tenía, los borré todos los hidrógenos con: %g/          H/d
    antechamber -i hplm.pdb -fi pdb -o hplm.mol2 -fo mol2 -c bcc
    parmchk2 -i hplm.mol2 -f mol2 -o hplm.frcmod
    wrote and run "leap_plm.in". logfile in "log_plm"

    Le cambié el nombre de la cadena de X a B al palmitato 
    pdb4amber -i 4xcp.pdb -o h4xcp.pdb  --reduce  // elimino todos los archivos salvo h4xcp.pdb
    wrote and run "leap_4xcp.in". logfile in "log_4xcp"

1AEL:
-----
    *orig_1ael.pdb* es el 1er modelo de la estructura RMN bajada del PDB. Fue
        alineada con la *orig_1ure.pdb*.
    cp orig_1ael.pdb 1ael.pdb // y a 1ael le borré todos los hidrógenos con: %g/          H/d
    Después usé ANA p/ renumerar sus átomos y aminoácidos // ANA 1ael.pdb --tool_pdb_norm=as && mv as.pdb 1ael.pdb
    Le cambié el nombre de la cadena de X a A
    pdb4amber -i 1ael.pdb -o h1ael.pdb  --reduce  // elimino todos los archivos salvo h1ael.pdb
    wrote and run "leap_1ael.in". logfile in "log_1ael"

1URE:
-----
    a orig_1ure.pdb resids MSE con HETATM paso a MET y ATOM. La SE pasa a SD
        con elemento S. GLU 46 tenía multiplicidad. Borré la 2da. > 1ure.pdb
    Después usé ANA p/ renumerar sus átomos y aminoácidos // ANA 1ure.pdb --tool_pdb_norm=as && mv as.pdb 1ure.pdb
    copio el palmitato de 1ure.pdb > plm.pdb
    no tenía hidrógenos //  y si tenía, los borré todos los hidrógenos con: %g/          H/d
    antechamber -i hplm.pdb -fi pdb -o hplm.mol2 -fo mol2 -c bcc
    parmchk2 -i hplm.mol2 -f mol2 -o hplm.frcmod
    wrote and run "leap_plm.in". logfile in "log_plm"

    Le cambié el nombre de la cadena de X a B al palmitato 
    pdb4amber -i 1ure.pdb -o h1ure.pdb  --reduce  // elimino todos los archivos salvo h1ure.pdb
    wrote and run "leap_1ure.in". logfile in "log_1ure"

2W9Y:
-----
    cp orig_2w9y.pdb model/2W9Y.pdb // no tenía hidrógenos 
        // también le borré los 1eros 2 aminoacidos (-1 y 0) q eran parte del tag.
        // también cambié la ACYX por CYS
    Modelé los 4 residuos faltantes (43-46) en model/. Hice 50 modelos, elegí: 
    cp model/2W9Y_full.B99990034.pdb 2w9y.pdb
    pdb4amber -i 2w9y.pdb -o h2w9y.pdb  --reduce  // elimino todos los archivos salvo h2w9y.pdb
    wrote and run "leap_2w9y.in". logfile in "log_2w9y"


#######
# Alineo
######

1IFB:
----
    cp orig_1ifb.pdb 1ifb.pdb // y a 1ifb le borré todos los hidrógenos con: %g/          H/d
    Después usé ANA p/ renumerar sus átomos y aminoácidos // ANA 1ifb.pdb --tool_pdb_norm=as && mv as.pdb 1ifb.pdb
    Le cambié el nombre de la cadena de X a A
    pdb4amber -i 1ifb.pdb -o h1ifb.pdb  --reduce  // elimino todos los archivos salvo h1ifb.pdb
    wrote leap_1ifb.in
    tleap -f leap_1ifb.in > log_1ifb

2IFB:
----
    saco el palmitato lineal y conservo el curvado. 
    a orig_2ifb.pdb 
    Después usé ANA p/ renumerar sus átomos y aminoácidos // ANA 2ifb.pdb --tool_pdb_norm=as && mv as.pdb 2ifb.pdb
    copio el palmitato de 2ifb.pdb > plm.pdb
    no tenía hidrógenos //  y si tenía, los borré todos los hidrógenos con: %g/          H/d
    pdb4amber -i plm.pdb -o hplm.pdb  --reduce  // elimino todos los archivos salvo plm.pdb
    antechamber -i hplm.pdb -fi pdb -o hplm.mol2 -fo mol2 -c bcc
    parmchk2 -i hplm.mol2 -f mol2 -o hplm.frcmod
    wrote leap_plm.in
    tleap -f leap_plm.in > log_plm // Le cambié el nombre de la cadena de X a B al palmitato 

    pdb4amber -i 2ifb.pdb -o h2ifb.pdb  --reduce  // elimino todos los archivos salvo h2ifb.pdb
    tleap -f leap_2ifb.in > log_2ifb
    wrote and run **leap_2ifb.in** logfile in **log_2ifb**
