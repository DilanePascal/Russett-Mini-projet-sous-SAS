/* Correlations entre les phenomenes d'instabilite politique d'une part,     */
/* et entre inegalites agricoles et developpement industriel d'autre part -- */
/* repris du projet Russett.                                                 */

proc corr data=russett PLOTS=matrix(Histogram);
    var inst ecks death;
    title "Correlation entre l'instabilite de l'executif et les violences politiques";
run;

proc corr data=russett PLOTS=matrix(Histogram);
    var gnpr gini;
    title "Correlation entre inegalites agricoles et developpement industriel";
run;
