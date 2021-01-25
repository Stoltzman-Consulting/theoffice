#' The application server-side
#' 
#' @param input,output,session Internal parameters for {shiny}. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function( input, output, session ) {
  # List the first level callModules here
  callModule(mod_sales_overview_server, "sales_overview_ui_1")
  callModule(mod_sales_seasons_server, "sales_seasons_ui_1")
  callModule(mod_ratings_overview_server, "ratings_overview_ui_1")
  callModule(mod_ratings_seasons_server, "ratings_seasons_ui_1")
  callModule(mod_ratings_episodes_server, "ratings_episodes_ui_1")
  callModule(mod_ratings_characters_server, "ratings_characters_ui_1")
  callModule(mod_ratings_writers_server, "ratings_writers_ui_1")
  callModule(mod_ratings_directors_server, "ratings_directors_ui_1")
  callModule(mod_script_analysis_server, "script_analysis_ui_1")
  
}
