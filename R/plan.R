#' Write basic plan
#'
#' @return A drake plan
#' @export
#'
#' @importFrom drake drake_plan
#' @examples
write_plan <- function() {
  drake::drake_plan(
    eco_list = datatoolboxexos::data_ecoregion(),
    sp_eco = datatoolboxexos::data_mammals_ecoregions(),
    sp_list = datatoolboxexos::data_mammals(),
    pantheria = datatoolboxexos::data_pantheria()
  )
}
