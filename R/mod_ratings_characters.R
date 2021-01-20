#' ratings_characters UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_ratings_characters_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' ratings_characters Server Function
#'
#' @noRd 
mod_ratings_characters_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_ratings_characters_ui("ratings_characters_ui_1")
    
## To be copied in the server
# callModule(mod_ratings_characters_server, "ratings_characters_ui_1")
 
