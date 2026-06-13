/* Verification de l'hypothese directrice du projet : isoler les pays dont   */
/* les inegalites agricoles (gini) sont superieures a la moyenne et le       */
/* developpement industriel (gnpr) inferieur a la moyenne -- repris du       */
/* projet Russett. Les moyennes generales sont d'abord calculees, puis       */
/* chaque pays est compare a ces moyennes.                                   */

proc sql;
    create table moyennes as
    select avg(gini) as gini_moy, avg(gnpr) as gnpr_moy
    from russett;

    title "Les pays qui verifient l'hypothese formulee";
    select r.continent, r.pays, r.gini, r.gnpr, r.demo
    from russett as r, moyennes as m
    where r.gini > m.gini_moy and r.gnpr < m.gnpr_moy
    order by r.continent, r.pays;
quit;
