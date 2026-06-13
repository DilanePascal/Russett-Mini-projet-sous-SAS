/* Recodage du regime politique en variable binaire (dictature = 1, sinon 0) */
/* puis comparaison des moyennes d'inegalites agricoles (gini) et de         */
/* developpement industriel (gnpr) selon ce regime -- repris du projet       */
/* Russett.                                                                  */

data russett2;
    set russett;
    if demo = "dictature" then regime = 1;
                          else regime = 0;
run;

proc means data=russett2 mean std n;
    class regime;
    var gini;
run;

proc means data=russett2 mean std n;
    class regime;
    var gnpr;
run;
