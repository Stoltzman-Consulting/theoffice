#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # List the first level UI elements here
    shinydashboard::dashboardPage(
      skin = "black",
      header = shinydashboard::dashboardHeader(
        title = "The Office Analysis"
      ),
      
      shinydashboard::dashboardSidebar(
        shinydashboard::sidebarMenu(
          shinydashboard::menuItem("Sales Analysis", tabName = "sales_analysis", icon = icon("dashboard"),
                                   shinydashboard::menuSubItem("Overview", tabName = "sales_overview", icon = icon("dashboard")),
                                   shinydashboard::menuSubItem("Seasons", tabName = "sales_seasons", icon = icon("users-cog"))),
          
          shinydashboard::menuItem("Ratings Analysis", tabName = "ratings_analysis", icon = icon("dashboard"),
                                   shinydashboard::menuSubItem("Overview", tabName = "ratings_overview", icon = icon("dashboard")),
                                   shinydashboard::menuSubItem("Seasons", tabName = "ratings_seasons", icon = icon("dashboard")),
                                   shinydashboard::menuSubItem("Episodes", tabName = "ratings_episodes", icon = icon("dashboard")),
                                   shinydashboard::menuSubItem("Characters", tabName = "ratings_characters", icon = icon("dashboard")),
                                   shinydashboard::menuSubItem("Writers", tabName = "ratings_writers", icon = icon("dashboard")),
                                   shinydashboard::menuSubItem("Directors", tabName = "ratings_directors", icon = icon("dashboard"))),
          shinydashboard::menuItem("Script Analysis", tabName = "script_analysis", icon = icon("dashboard"))
        )
      ),
      
      shinydashboard::dashboardBody(
        
        shinydashboard::tabItems(
          shinydashboard::tabItem("sales_overview", mod_sales_overview_ui("sales_overview_ui_1")),
          shinydashboard::tabItem("sales_seasons", mod_sales_seasons_ui("sales_seasons_ui_1")),
          shinydashboard::tabItem("ratings_overview", mod_ratings_overview_ui("ratings_overview_ui_1")),
          shinydashboard::tabItem("ratings_seaons",   mod_ratings_seasons_ui("ratings_seasons_ui_1")),
          shinydashboard::tabItem("ratings_episodes",  mod_ratings_episodes_ui("ratings_episodes_ui_1")),
          shinydashboard::tabItem("ratings_characters",  mod_ratings_characters_ui("ratings_characters_ui_1")),
          shinydashboard::tabItem("ratings_writers",  mod_ratings_writers_ui("ratings_writers_ui_1")),
          shinydashboard::tabItem("ratings_directors",  mod_ratings_directors_ui("ratings_directors_ui_1")),
          shinydashboard::tabItem("script_analysis", mod_script_analysis_ui("script_analysis_ui_1"))
        )
      )
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'theoffice'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

