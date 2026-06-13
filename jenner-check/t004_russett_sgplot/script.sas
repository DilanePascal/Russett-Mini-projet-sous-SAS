/* Representations graphiques : repartition des types de regime politique    */
/* (hbar) et inegalites agricoles par regime (vbox) -- repris du projet      */
/* Russett.                                                                  */

PROC SGPLOT data=russett;
    vbox gini / category=demo;
    title "Inegalites agricoles (GINI) par regime";
RUN;

PROC SGPLOT data=russett;
    hbar demo;
    title "Repartition des types de regime politique";
RUN;
