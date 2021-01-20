#' ratings_episodes UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_ratings_episodes_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' ratings_episodes Server Function
#'
#' @noRd 
mod_ratings_episodes_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_ratings_episodes_ui("ratings_episodes_ui_1")
    
## To be copied in the server
# callModule(mod_ratings_episodes_server, "ratings_episodes_ui_1")
 
