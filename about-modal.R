# ********************************************************************
# about-modal.R
# About application dialog for Alpha Centauri application template
# (C) 2022 Nenad Trajkovic, MIT License
# ********************************************************************

about_modal <- modalDialog(
  title = "About ...",
  div(style = "text-align: center",
    h4("Alpha Centauri", style = "font-weight: bold"),
    p("v 1.0"),
    p("Author: Nenad Trajkovic"),
    p("Alpha Centauri is a Shiny R application template meant to provide
       a skeleton and thus ease the starting process of writing Shiny R
       applications.",
       style = "margin-left: 64px; margin-right: 64px; text-align: justify"),
    p(a("MIT License", href = "https://choosealicense.com/licenses/mit/",
       title = "Show MIT License information", target = "_blank")),
    p(HTML("&copy; 2022 Nenad Trajkovic"))
  ),
  easyClose = TRUE
)
