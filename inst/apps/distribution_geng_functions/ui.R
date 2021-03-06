ui = fluidPage(theme = teachingApps::add_theme(getShinyOption("theme")), 
               teachingApps::add_css(),

sidebarLayout(
  sidebarPanel(width = 3,

  sliderInput("range.geng", 
              label = "Range",
              min =  0, 
              max = 50, 
              value = c(0,25)),
  sliderInput("theta.geng", 
              label = h2(HTML("&theta;")),
              min = 0.5, 
              max = 10, 
              step = 0.5, 
              value = 1,
              animate = TRUE),
  sliderInput("beta.geng", 
              label = h2(HTML("&beta;")),
              min = 0.5, 
              max = 10, 
              step = 0.5, 
              value = 1, 
              animate = TRUE),
  sliderInput("kappa.geng",
              label = h2(HTML("&kappa;")),
              min = 0.5, 
              max = 10, 
              step = 0.5, 
              value = 1,
              animate = TRUE)),
  mainPanel(width = 9,
 tabsetPanel(type = 'pills',
  tabPanel('Distribution Function',metricsgraphicsOutput("gengC",height = "600px")),
  tabPanel('Density',              metricsgraphicsOutput("gengP",height = "600px")),
  tabPanel('Survival',             metricsgraphicsOutput("gengR",height = "600px")),
  tabPanel('Hazard',               metricsgraphicsOutput("gengh",height = "600px")),
  tabPanel('Cumulative Hazard',    metricsgraphicsOutput("gengH",height = "600px")),
  tabPanel('Quantile',             metricsgraphicsOutput("gengQ",height = "600px"))
  ))))
