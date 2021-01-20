#' script_analysis UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_script_analysis_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' script_analysis Server Function
#'
#' @noRd 
mod_script_analysis_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_script_analysis_ui("script_analysis_ui_1")
    
## To be copied in the server
# callModule(mod_script_analysis_server, "script_analysis_ui_1")
 
