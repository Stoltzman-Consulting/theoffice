#' sales_overview UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_sales_overview_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' sales_overview Server Function
#'
#' @noRd 
mod_sales_overview_server <- function(input, output, session){
  ns <- session$ns
 
}
    
## To be copied in the UI
# mod_sales_overview_ui("sales_overview_ui_1")
    
## To be copied in the server
# callModule(mod_sales_overview_server, "sales_overview_ui_1")
 
