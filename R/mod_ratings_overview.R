#' ratings_overview UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_ratings_overview_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' ratings_overview Server Function
#'
#' @noRd 
mod_ratings_overview_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_ratings_overview_ui("ratings_overview_ui_1")
    
## To be copied in the server
# callModule(mod_ratings_overview_server, "ratings_overview_ui_1")
 
