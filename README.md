
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datatoolboxexos

This repository contains the code and data I used during the datatoolbox
CESAB workshop exercices. The courses and exercices of the workshop are
obtainable [here](https://github.com/FRBCesab/datatoolbox).

### How to cite

Please cite this compendium as:

> Authors, (2020). *Compendium of R code and data for CESAB datatoolbox
> workshop exercices*. Accessed 04 nov. 2020. Online at
> <https://github.com/FRBCesab/datatoolboxexos>

## Contents

The [**data**](data/) directory contains the data sets used in the
analyses. There is a `README` in that directory that describes the data
sets.

The [**exercices**](exercices/) directory contains and `.Rmd` file for
each exercice:

  - [::spiral\_notepad:: exo\_dplyr](/exercices/exo_dplyr.Rmd)
  - [::spiral\_notepad:: exo\_ggplot2](/exercices/exo_ggplot2.Rmd)

Each R Markdown source document for the exercices includes code to
reproduce the figures and tables generated by the analyses. They also
have rendered versions, `.md` and `html` suitable respectively for
reading on github and in a web browser:

  - [::spiral\_notepad:: exo\_dplyr](/exercices/exo_dplyr.md)

  - [::spiral\_notepad:: exo\_ggplot2](/exercices/exo_ggplot2.md)

  - [::spiral\_notepad:: exo\_dplyr](/exercices/exo_dplyr.html)

  - [::spiral\_notepad:: exo\_ggplot2](/exercices/exo_ggplot2.html)

## How to run it ?

This research compendium has been developed using the statistical
programming language R. To work with the compendium, you will need
installed on your computer the [R
software](https://cloud.r-project.org/) itself and optionally [RStudio
Desktop](https://rstudio.com/products/rstudio/download/).

You can download the compendium as a zip from from this URL:
[master.zip](/archive/master.zip). After unzipping:

  - open the `.Rproj` file in RStudio

  - open `make.R` and source it to ensure you have the packages these
    analyses depends on (also listed in the [DESCRIPTION](/DESCRIPTION)
    file under `Imports`) and produce the reports for all the
    exercercices.

### Licenses

**Text and figures :**
[CC-BY-4.0](http://creativecommons.org/licenses/by/4.0/)

**Code :** See the [DESCRIPTION](DESCRIPTION) file

**Data :** [CC-0](http://creativecommons.org/publicdomain/zero/1.0/)
attribution requested in reuse

## Session Info

``` r
utils::sessionInfo()
#> R version 3.6.3 (2020-02-29)
#> Platform: x86_64-pc-linux-gnu (64-bit)
#> Running under: Ubuntu 19.10
#> 
#> Matrix products: default
#> BLAS:   /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.8.0
#> LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.8.0
#> 
#> locale:
#>  [1] LC_CTYPE=fr_FR.UTF-8       LC_NUMERIC=C              
#>  [3] LC_TIME=fr_FR.UTF-8        LC_COLLATE=fr_FR.UTF-8    
#>  [5] LC_MONETARY=fr_FR.UTF-8    LC_MESSAGES=fr_FR.UTF-8   
#>  [7] LC_PAPER=fr_FR.UTF-8       LC_NAME=C                 
#>  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
#> [11] LC_MEASUREMENT=fr_FR.UTF-8 LC_IDENTIFICATION=C       
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> loaded via a namespace (and not attached):
#>  [1] compiler_3.6.3  magrittr_1.5    tools_3.6.3     htmltools_0.5.0
#>  [5] yaml_2.2.1      stringi_1.5.3   rmarkdown_2.5   knitr_1.30     
#>  [9] stringr_1.4.0   xfun_0.18       digest_0.6.27   rlang_0.4.8    
#> [13] evaluate_0.14
```
