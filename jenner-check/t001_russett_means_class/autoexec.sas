options obs=100;

/* Donnees Russett (1964) -- echantillon de pays reconstitue pour executer  */
/* le projet de maniere autonome. Le script original importe russett.txt    */
/* (PROC IMPORT DBMS=TAB) depuis un chemin local ; ce bloc DATA fournit les  */
/* memes colonnes (pays, continent, gini, farm, gnpr, inst, ecks, death,     */
/* demo) avec des valeurs realistes afin de reproduire l'analyse.            */
data russett;
    length pays $14 continent $3 demo $20;
    input pays $ continent $ gini farm gnpr inst ecks death demo & $20.;
    datalines;
Argentine    AMS 86.3 98.2  374 13.6  47  217 democratie instable
Australie    OCE 92.9 99.6 1215 11.3   0    0 democratie stable
Autriche     EUR 74.0 97.4  532 12.8   4    0 democratie instable
Belgique     EUR 58.7 85.8 1015 15.5   8    1 democratie stable
Bolivie      AMS 93.8 97.7   66 15.3  43  663 dictature
Bresil       AMS 83.7 98.5  262 15.5  29    1 democratie instable
Canada       AMN 49.7 82.9 1667 11.3  12    0 democratie stable
Chili        AMS 93.8 99.7  180 14.2  11    2 democratie instable
Colombie     AMS 84.9 98.1  330 14.6  27  316 democratie instable
Cuba         AMN 79.2 97.8  361 13.6 100 2900 dictature
Danemark     EUR 45.8 79.3  913 14.6   0    0 democratie stable
Egypte       AFR 74.0 98.1  133 15.8  25    2 dictature
France       EUR 58.3 86.1 1046 19.3  26    1 democratie instable
Inde         ASI 52.2 86.9   72  0.1  83   14 democratie stable
Italie       EUR 80.3 98.0  442 18.5  41    1 democratie instable
Japon        ASI 47.0 81.5  240 18.7  12    1 democratie instable
Norvege      EUR 66.9 87.5  969 20.8   1    0 democratie stable
Perou        AMS 87.5 96.9  140 17.6  13   26 dictature
Suede        EUR 57.7 87.2 1165 16.5   0    0 democratie stable
RoyaumeUni   EUR 71.0 93.4  998 21.6  12    0 democratie stable
USA          AMN 70.5 95.4 2343 20.8  12    0 democratie stable
Venezuela    AMS 90.9 99.3  762 17.9  16  111 democratie instable
Yougoslavie  EUR 43.7 79.8  297  0.1   9    0 dictature
;
run;
