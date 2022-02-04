# ********************************************************************
# ui.R
# User interface for Alpha Centauri application template
# (C) 2022 Nenad Trajkovic, MIT License
# ********************************************************************

source("about-modal.R")

ui <- fluidPage(

  includeCSS("alpha-centauri.css"),

  titlePanel("Alpha Centauri"),
  p("Shiny R Application Template"),
  hr(),

  sidebarLayout(
    sidebarPanel(

      # Plot ctrl.
      conditionalPanel(
        condition = "input.tab === 'Plot'",
        helpText("Select plot values"),
        varSelectInput("x_axis", label = "X Axis",
          data = iris, selected = "Petal.Length"),
        varSelectInput("y_axis", label = "Y Axis",
          data = iris, selected = "Sepal.Length"),
        varSelectInput("color", label = "Color",
          data = iris, selected = "Species")
      ), # Plot ctrl.

      # Table ctrl.
      conditionalPanel(
        condition = "input.tab === 'Table'",
        helpText("Adjust filter options"),
        sliderInput("filter", label = "Select range for Sepal.Length",
          min = min(iris$Sepal.Length),
          max = max(iris$Sepal.Length),
          value = range(iris$Sepal.Length))
      ), # Table ctrl.

      # About app.
      actionLink("about", HTML("Alpha Centauri &#9830; About"))

    ), # sidebarPanel

    mainPanel(
      tabsetPanel(id = "tab",

        # Plot
        tabPanel("Plot",
          plotOutput("plot")
        ), # Plot

        # Table
        tabPanel("Table",
          dataTableOutput("table")
        ), # Table

      ) # tabsetPanel
    ) # mainPanel
  ), # sidebarLayout

  hr(),
  actionLink("copy", HTML("&copy; 2022 Nenad Trajkovic"))

) # fluidPage
