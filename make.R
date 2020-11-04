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

# ----- Knit exo dplyr ----
rmarkdown::render(input      = here::here("exercices","exo_dplyr.Rmd"),
                  output_dir = here::here("output", "text")
                  )

# ----- Knit exo ggplot2 ----
rmarkdown::render(input      = here::here("exercices","exo_ggplot2.Rmd"),
                  output_dir = here::here("output", "text")
                  )

# ----- Knit exo spatial ----
#rmarkdown::render(here::here("exercices","exo_spatial.Rmd"))


# ----- exo Drake ----

## Execute plan
drake::r_make()
## Visualize
drake::r_vis_drake_graph(targets_only = TRUE)
drake::r_vis_drake_graph()


