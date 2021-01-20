#' sales_seasons UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_sales_seasons_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' sales_seasons Server Function
#'
#' @noRd 
mod_sales_seasons_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_sales_seasons_ui("sales_seasons_ui_1")
    
## To be copied in the server
# callModule(mod_sales_seasons_server, "sales_seasons_ui_1")
 
