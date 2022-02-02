# ********************************************************************
# server.R
# Server functionality for Alpha Centauri application template
# (C) 2022 Nenad Trajkovic, MIT License
# ********************************************************************

server <- function(input, output) {
  observeEvent(input$about, { showModal(about_modal) })
  observeEvent(input$copy, { showModal(about_modal) })
}
