/* Statistiques descriptives des trois blocs d'etude (inegalites agricoles, */
/* developpement industriel, instabilite politique) ventilees par continent */
/* puis par regime politique -- repris du projet Russett.                    */

PROC MEANS data=russett MEAN STD MIN MAX MAXDEC=2;
    Class continent;
    VAR gini gnpr inst;
RUN;

proc means data=russett mean n std min max;
    Class continent;
    VAR gnpr;
RUN;

proc means data=russett mean n std min max;
    class demo;
    var gnpr;
run;

proc means data=russett mean n std max min;
    var inst ecks death;
    class demo;
run;
