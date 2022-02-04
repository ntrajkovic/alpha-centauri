# ********************************************************************
# server.R
# Server functionality for Alpha Centauri application template
# (C) 2022 Nenad Trajkovic, MIT License
# ********************************************************************

library(ggplot2)

server <- function(input, output) {

  # Plot
  output$plot <- renderPlot({
    ggplot(iris, aes_string(x = input$x_axis, y = input$y_axis,
      colour = input$color)) + geom_point()
  }) # Plot

  # Table
  output$table <- renderDataTable({
    iris[iris$Sepal.Length >= input$filter[1] &
         iris$Sepal.Length <= input$filter[2], ]
  }) # Table

  # About
  observeEvent(input$about, { showModal(about_modal) })
  observeEvent(input$copy, { showModal(about_modal) })
}
