---
title: "Visualisation de données avec {ggplot2}"
author: "francois.guilhaumon@ird.fr"
date: "2020-11-04"
output:
  html_document:
    keep_md: yes
---



# Introduction

Dans cet exercice nous allons utiliser le package `ggplot2` pour visualiser des données.

# Données

On utilise la base de donnée :

- **PanTHERIA** [:globe_with_meridians:](https://esajournals.onlinelibrary.wiley.com/doi/10.1890/08-1494.1)

La base de données PanTHERIA recense un très grand nombre de traits d'histoire de vie, traits écologiques et géographiques pour les espèces de mammifères du monde entier.
Le fichier texte contenant cette base de données se trouve dans `data/pantheria-traits/PanTHERIA_1-0_WR05_Aug2008.txt`

# Project development logs

Packages used by the project. If cannot be added to `DESCRIPTION` with `usethis::use_package`:

1. install them with `install.packages`, or

2. add them  manually to `DESCRIPTION`


```r
# add needed packages
usethis::use_package("dplyr")
usethis::use_package("ggplot2")
usethis::use_package("magrittr")
usethis::use_package("forcats")
usethis::use_package("fishualize")
usethis::use_package("sf")
usethis::use_package("drake")
```

Create files needed by `drake`.


```r
usethis::use_r(name = "wrangle.R")
usethis::use_r(name = "plots.R")
usethis::use_r(name = "plan.R")
file.create("_drake.R")
#file.create("make.R") essayons de modifier celui que l'on a déjà
dir.create("output") #ce repertoire est pertinent pour la separationd es methodeset des outputs.
#dir.create("text") #on peut aussi utiliser notre répertoire "exercices" ici ;)
dir.create("output/plots")
dir.create("output/text")
```


Ignore `drake` files in `.gitignore` and `.Rbuilignore`.


```r
# ignore files
usethis::use_build_ignore(".drake")
usethis::use_build_ignore("_drake.R")
usethis::use_build_ignore("make.R")
usethis::use_git_ignore(".drake")
usethis::use_build_ignore("output/")
usethis::use_build_ignore("text/")
```


[...]
