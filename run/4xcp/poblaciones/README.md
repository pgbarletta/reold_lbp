# Poblaciones
 * Separé 4xcp en 3 poblaciones

## Dentro de intra
 * Obtuve las struct.s average de c/u de las 3
 * Obtuve el rmsd de las trayectorias respecto al average p/ poder identificar
    la struct de menor RMSD (y así tener un avg potable). Lo llame "top_...".
 * Obtuve los RMSDs de c/ traj respecto a su avg: 
        avg vol0 - trj vol0
        avg vol1 - trj vol1
        avg vol2 - trj vol2


## Dentro de inter 
 * Obtuve RMSDs entre las trj. Tome 1 de 10(o 100?) frames p/ q no explote la pc.
    Así, tengo otros 3 RMSDs

      trj vol0 - trj vol1
      trj vol0 - trj vol2
      trj vol1 - trj vol2
 * s
