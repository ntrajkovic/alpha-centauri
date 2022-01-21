#!/usr/bin/Rscript --vanilla

# ********************************************************************
# alpha-centauri.R
# Alpha Centauri application template
# (C) 2022 Nenad Trajkovic, MIT License
# ********************************************************************

library(shiny)

source("ui.R")
source("server.R")

alpha_centauri <- shinyApp(ui, server)
runApp(alpha_centauri, port = 5000)
