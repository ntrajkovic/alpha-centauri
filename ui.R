# ********************************************************************
# ui.R
# User interface for Alpha Centauri application template
# (C) 2022 Nenad Trajkovic, MIT License
# ********************************************************************

source("about-modal.R")

ui <- fluidPage(

  titlePanel("Alpha Centauri"),
  p("Shiny R Application Template"),
  hr(),

  sidebarLayout(
    sidebarPanel(

      # Plot ctrl.
      conditionalPanel(
        condition = "input.tab === 'Plot'",
        helpText("Select plot values"),
        selectInput("x_axis", label = "X Axis",
          choices = c("Col 1" = "c1",
                      "Col 2" = "c2",
                      "Col 3" = "c3")),
        selectInput("y_axis", label = "Y Axis",
          choices = c("Col 1" = "c1",
                      "Col 2" = "c2",
                      "Col 3" = "c3"))
      ), # Plot ctrl.

      # Table ctrl.
      conditionalPanel(
        condition = "input.tab === 'Table'",
        helpText("Adjust filter options"),
        sliderInput("filter", label = "Select range for Col 1",
          min = 0, max = 100, value = c(15, 45))
      ), # Table ctrl.

      # About app.
      actionLink("about", HTML("Alpha Centauri &#9830; About"),
        style = "display: block; text-align: center; color:gray;
                 text-decoration: none")

    ), # sidebarPanel

    mainPanel(
      tabsetPanel(id = "tab",

        # Plot
        tabPanel("Plot",
          div(style = "height:16px"),
          plotOutput("plot")
        ), # Plot

        # Table
        tabPanel("Table",
          div(style = "height:16px"),
          dataTableOutput("table")
        ), # Table

      ) # tabsetPanel
    ) # mainPanel
  ), # sidebarLayout

  hr(),
  actionLink("copy", HTML("&copy; 2022 Nenad Trajkovic"),
    style = "display: block; text-align: center; color: grey;
             text-decoration: none"),
  div(style = "height:16px")

) # fluidPage
