###################################################
#
# Data and Code for the CESAB Datatoolbox Exercices
#
###################################################

# ----- clean workspace
rm(list = ls())

# ----- install/update packages
devtools::install_deps()

# ----- install compendium package
#devtools::install(build = FALSE)
devtools::load_all()

# ----- Knit exo dplyr
rmarkdown::render(here::here("exercices","exo_dplyr.Rmd"))

# ----- Knit exo ggplot2
rmarkdown::render(here::here("exercices","exo_ggplot2.Rmd"))

# ----- Knit exo spatial
#rmarkdown::render(here::here("exercices","exo_spatial.Rmd"))
