ui = navbarPage(title = 'SMC Risk Calculator',
                collapsible = T, 
                position = 'fixed-top',
                theme  = add_theme(getShinyOption('theme')),
                header = add_css(),
                footer = add_logo(),

                
tabPanel('Calculator Tool',
   sidebarLayout(
   sidebarPanel(width = 3,
      sliderInput('weib1.1', 
                  label = HTML('Shape - &beta;<sub>1</sub>'), 
                  min = 0.5,
                  max = 6,
                  step = .5,
                  value = 1),
      sliderInput('weib1.2', 
                  label = HTML('Scale - &eta;'), 
                  min = 5,
                  max = 40,
                  step = 1,
                  value = 12 ),
      sliderInput('tri2.1', 
                  label = HTML('<red>Mean - &mu;</red>'), 
                  min = 40,
                  max = 80,
                  step = 1,
                  value = 50),
      sliderInput('tri2.2', 
                  label = HTML('<red>Variance - &sigma;</red>'), 
                  min = 5,
                  max = 15,
                  step = 1,
                  value = 5 )),
               
      mainPanel(metricsgraphicsOutput('weibtri', height = '625px'), width = 9))))

