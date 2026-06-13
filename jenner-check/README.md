# Tests de compatibilite Jenner

Ce dossier a ete ajoute par une pull request du projet
[Jenner](https://jenneranalytics.com). Chaque sous-dossier `tNNN_*` contient
un script SAS derive du code de ce depot. Le but est de verifier que Jenner
— un moteur compatible SAS — produit les memes resultats que votre
installation SAS sur du code qui ressemble au votre.

Tous les bundles ci-dessous proviennent de `Annexe SAS - Russett.sas`. Le
`PROC IMPORT` du fichier TAB local (`russett.txt`) a ete remplace par un
bloc `DATA` qui reconstitue les memes colonnes (`pays`, `continent`, `gini`,
`farm`, `gnpr`, `inst`, `ecks`, `death`, `demo`) avec des valeurs realistes,
afin que chaque analyse s'execute de maniere autonome.

## Contenu

```
jenner-check/
├── README.md            # ce fichier
├── run_jenner.sh        # runner mac/linux (curl)
├── run_jenner.bat       # runner Windows
├── run_jenner.sas       # equivalent en SAS pur
└── tNNN_…/
    ├── script.sas       # le script SAS teste
    ├── autoexec.sas     # options + bloc DATA des donnees Russett
    ├── expected.json    # champs stables figes d'un run reussi
    ├── expected/        # capture lisible (log, listing, artefacts)
    └── meta.json        # provenance + notes sur l'adaptation
```

| Bundle | Analyse |
|---|---|
| `t001_russett_means_class` | PROC MEANS des trois blocs par continent et par regime |
| `t002_russett_univariate` | PROC UNIVARIATE (GINI, FARM) avec histogramme normal |
| `t003_russett_corr` | PROC CORR (instabilite politique ; inegalites vs developpement) |
| `t004_russett_sgplot` | PROC SGPLOT vbox et hbar par regime politique |
| `t005_russett_sql_hypothese` | PROC SQL : verification de l'hypothese directrice |
| `t006_russett_recode_regime` | DATA step de recodage du regime + PROC MEANS |

## Comment l'executer

Depuis le dossier `jenner-check/` :

```bash
./run_jenner.sh --all          # exécute tous les bundles, resume pass/fail
./run_jenner.sh t005_russett_sql_hypothese   # un seul bundle
```

Le runner concatene `autoexec.sas` puis `script.sas`, les envoie a l'API
Jenner et compare la reponse a `expected.json`. Sous Windows, utilisez
`run_jenner.bat` ; sans installer de runner, vous pouvez aussi coller
n'importe quel `script.sas` dans l'espace de travail hebergé sur
[jenneranalytics.com](https://jenneranalytics.com).

## Badge optionnel « Jenner Compatible »

Si vous souhaitez afficher la compatibilite Jenner dans votre README,
collez le markdown ci-dessous. C'est entierement optionnel.

```markdown
[![Jenner Compatible](https://jenneranalytics.com/badges/jenner-compatible.svg)](https://jenneranalytics.com)
```

## Vous ne voulez plus de PR de notre part ?

Repondez a cette PR avec `no-more-prs` (insensible a la casse) n'importe ou
dans un commentaire, ou ouvrez une issue intitulee `jenner-check: opt out`.
Nous enregistrerons votre depot comme « do-not-contact » et cesserons les PR
automatiques.

## A propos

Jenner est un moteur compatible SAS. Tout le contexte est disponible sur
[jenneranalytics.com](https://jenneranalytics.com).
