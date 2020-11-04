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
devtools::install(build = FALSE) #cette ligne est necesaire aux
# utilisateurs voulant reconstruire votre compendium
#devtools::load_all() #cette ligne est à utiliser en cours de développement

# ----- Knit exo dplyr
rmarkdown::render(here::here("exercices","exo_dplyr.Rmd"))

# ----- Knit exo ggplot2
rmarkdown::render(here::here("exercices","exo_ggplot2.Rmd"))

# ----- Knit exo spatial
#rmarkdown::render(here::here("exercices","exo_spatial.Rmd"))
