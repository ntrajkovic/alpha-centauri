# ********************************************************************
# about-modal.R
# About application dialog for Alpha Centauri application template
# (C) 2022 Nenad Trajkovic, MIT License
# ********************************************************************

about_modal <- modalDialog(
  title = "About",
  div(id = "about-content",
    h4("Alpha Centauri"),
    p("v 1.0"),
    p("Author: Nenad Trajkovic"),
    p("Alpha Centauri is a Shiny R application template meant to provide
       a skeleton and thus ease the starting process of writing Shiny R
       applications.", id = "about-description"),
    p(a("MIT License", href = "https://choosealicense.com/licenses/mit/",
       title = "Show MIT License information", target = "_blank")),
    p(HTML("&copy; 2022 Nenad Trajkovic"))
  ),
  easyClose = TRUE
)
