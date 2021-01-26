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
shinydashboard::box(
  width = 12,
  fluidRow(
    column(
      width = 6,
      DT::DTOutput(ns("table_example_overview"))
    ),
    column(
    width = 6,
    plotOutput(ns("plot_example_overview"))
  )
  )
  ) 
  )
}
    
#' sales_overview Server Function
#'
#' @noRd 
mod_sales_overview_server <- function(input, output, session){
  ns <- session$ns
 
  output$table_example_overview <- DT::renderDT(
    shinipsum::random_DT(nrow = 5, ncol = 6)
  )
  
  output$plot_example_overview <- renderPlot(
    shinipsum::random_ggplot()
  )
  
}
    
## To be copied in the UI
# mod_sales_overview_ui("sales_overview_ui_1")
    
## To be copied in the server
# callModule(mod_sales_overview_server, "sales_overview_ui_1")
 
