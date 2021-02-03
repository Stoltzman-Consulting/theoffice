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
  fluidRow(
    width = 12,
    shinydashboard::box(
    width = 6,
    sliderInput(ns("obs_count"), "# of Observations",
                min = 5, max = 75,
                value = 10)
      
    )
  ),
  fluidRow(
    width = 12,
    shinydashboard::box(
      width = 7,
      DT::DTOutput(ns("table_example"))
        ),
  shinydashboard::box(
    width = 5,
    plotOutput(ns("plot_example"))
    )
  )
  ) 

}
    
#' sales_overview Server Function
#'
#' @noRd 
mod_sales_overview_server <- function(input, output, session){
  ns <- session$ns
 
  output$table_example <- DT::renderDT(
    shinipsum::random_DT(nrow = input$obs_count, ncol = 4)
  )
  
  output$plot_example <- renderPlot(
    shinipsum::random_ggplot()
  )
  
}
    
## To be copied in the UI
# mod_sales_overview_ui("sales_overview_ui_1")
    
## To be copied in the server
# callModule(mod_sales_overview_server, "sales_overview_ui_1")
 
