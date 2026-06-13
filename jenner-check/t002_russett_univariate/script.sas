/* Analyse de la distribution des inegalites agricoles (GINI) puis de        */
/* l'acces a la propriete des terres (FARM) avec ajustement normal --        */
/* repris du projet Russett.                                                 */

PROC UNIVARIATE DATA=russett;
    VAR gini;
    ID pays;
    title "Inegalite agricole (GINI) par pays";
RUN;

PROC UNIVARIATE DATA=russett;
    VAR farm;
    ID demo;
    title "Relation entre l'acces a la propriete (farm) des terres et le type de regime (demo)";
    HISTOGRAM / NORMAL;
RUN;
