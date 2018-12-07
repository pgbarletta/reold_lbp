# LBP
 * **1URE**: β con ligando.
 * **2W9Y**: α sin ligando y de otro organismo.
 * **4UET**: α sin ligando.
 * **4XCP**: α con ligando
 * **1IFB**: β sin ligando.
 * **2IFB**: β con ligando

## 1
 * **vol**: Histogramas de volúmenes de las 4. Los volúmenes fueron calculados en 1/10 frames de la trayectoria original (1 c/ 100ps), por razones de costo computacional. Irían acompañados de una representación de las proteínas.

## 2
 * **HisPn**: Histograma de los Pnumber modos necesarios p/ ir de frame a frame (Marquitos).
 * **ModPn**: Frecuencia de aparición de modos en los subespacios (de tamaño Pnumber) p/ ir de frame a frame (Marquitos).
 * **PCAHis**: Histograma de proyecciones sobre PCA1 y 2.

        2_PCAHis_4xcp: Separo en 3 poblaciones. 
            pop 1: (-)PCA1
            pop 2: (+)PCA2
            pop 3: (+)PCA1

        3D_1ure: Separo en 3 poblaciones. 
            pop 1: (-)PCA1
            pop 2: (+)PCA1 y (-)PCA3
            pop 3: (+)PCA1 y (+)PCA3
        
 * **3D**: bonus track, histograma 3D, agregando el PCA3. No agrega info al punto anterior, salvo en 1URE.

## 3
 * **3_Vol_4xcp**: Volúmen de 4XCP a lo largo de la trayectoria, clasificado según pertenencia a subpoblación. Como no todos los frames fueron asignados a una de las 3 poblaciones, hay vacíos, especialmente en los saltos de volúmen (consecuente).
 * **3_VolHis_4xcp**: Histograma de volúmenes de las subpoblaciones de 4XCP.

## 4
 * **4_PCAHis_4xcp_lig**: Histograma de proyecciones sobre PCA1 y 2 del ligando.

        4_PCAHis_4xcp_lig: separo en 2 poblaciones:
        lig 1: (-)PCA1 ; estirado
        lig 2: (+)PCA1 ; recogido
 * **4_Vol_4xcp_lig**: Volúmen de 4XCP a lo largo de la trayectoria, clasificado según pertenencia a subpoblación del ligando. Como no todos los frames fueron asignados a una de las 3 poblaciones, hay vacíos, especialmente en los saltos de volúmen (consecuente).
 * **4_VolHis_bars_4xcp_lig**: Histograma de volúmenes de las subpoblaciones según ligando de 4XCP.

## 5
 * **5_Dis_4xcp**: Histogramas de distancias entre extremos del ligando p/ las 3 subpoblaciones de proteína. Acá se termina de ver claramente lo q sucede: el ligando recogido, cabe en las 3 poblaciones, pero el estirado, solamente en la **pop1**, la de mayor volumen.

## 6

## 7
 * **U**: Energías de todes.    
