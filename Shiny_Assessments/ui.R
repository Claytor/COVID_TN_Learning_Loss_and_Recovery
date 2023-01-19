
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Assessment Data"),
  
  # Sidebar to explore assessments
  sidebarLayout(
    sidebarPanel(
      selectInput('System',
                  'Select a School District',
                  choices = assessments %>%
                    pull(System) %>%
                    unique() %>%
                    sort()
                  ),
      
     
      uiOutput('assessmentselect'),
       selectInput('Subject',
                  'Select the Subject',
                  choices = assessments %>%
                    pull(Subject) %>%
                    unique() %>%
                    sort()
                  )
    ),
    
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
