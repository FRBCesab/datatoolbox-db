



#' Get Pantheria traits data
#'
#' @return data.frame with traits data
#' @export
#'
data_pantheria <- function() {

  readr::read_delim(here::here("data", "pantheria-traits", "PanTHERIA_1-0_WR05_Aug2008.txt"),
                    delim = "\t")

}


data_pantheria_tidy <- function() {

  pantheria <- datatoolboxexos::data_pantheria()

  dat <- pantheria %>%
    dplyr::mutate(                                    # Conversion de type
      order   = forcats::as_factor(MSW05_Order),
      family  = forcats::as_factor(MSW05_Family)
    ) %>%
    dplyr::rename(                                    # Nom des colonnes
      adult_bodymass = `5-1_AdultBodyMass_g`,
      dispersal_age  = `7-1_DispersalAge_d`,
      gestation      = `9-1_GestationLen_d`,
      homerange      = `22-2_HomeRange_Indiv_km2`,
      litter_size    = `16-1_LittersPerYear`,
      longevity      = `17-1_MaxLongevity_m`
    )

  dat <- dat %>%
    dplyr::select(                                    # Sélection de colonnes
      order,
      family,
      adult_bodymass,
      dispersal_age,
      gestation,
      homerange,
      litter_size,
      longevity
    ) %>%
    dplyr::na_if(-999)

  return(dat)

}
