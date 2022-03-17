#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic
  output$dessin <- renderImage(deleteFile = FALSE,{
    list(src = app_sys("app/www/",paste0(input$truc,".png")))
  })
}
