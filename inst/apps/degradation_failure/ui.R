library(teachingApps)
library(scales)

ui = fluidPage(theme = shinythemes::shinytheme(theme = getShinyOption("theme")),
               tags$head(includeCSS("www/custom.css")),
               tags$footer(getShinyOption('sign')),
               
sidebarLayout(
  sidebarPanel(
    sliderInput("mean", 
                label = h4("Mean:"),
                min = 0,
                max = 4,
                step = 0.1,
                value = 2),
  
    sliderInput("sd", 
                label = h4("Standard Deviation:"),
                min = 0.25, 
                max = 2.5, 
                value = 1, 
                step = 0.1),
  
    sliderInput("crit", 
                label = h4("Critical Value:"),
                min = 2, 
                max = 6, 
                value = 3, 
                step = 0.1,
                animate = animationOptions(interval = 250, loop = T))), 
  
    mainPanel(plotOutput("output1", height = "600px"  ))))