#' ratings_seasons UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_ratings_seasons_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' ratings_seasons Server Function
#'
#' @noRd 
mod_ratings_seasons_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_ratings_seasons_ui("ratings_seasons_ui_1")
    
## To be copied in the server
# callModule(mod_ratings_seasons_server, "ratings_seasons_ui_1")
 
