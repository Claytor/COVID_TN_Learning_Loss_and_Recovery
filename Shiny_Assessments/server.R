# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$Test <- renderUI({
    selectInput('Test',
                'Select an Assessment Type',
                choices = assessments %>%
                  filter(System == input$System) %>% 
                  pull(Test) %>%
                  unique() %>%
                  sort()
    )
  })  
  
  output$Subject <- renderUI({
    selectInput('Subject',
                'Select the Subject',
                choices = assessments %>%
                  filter(Test == input$Test) %>% 
                  pull(Subject) %>%
                  unique() %>%
                  sort()
    )
  })
  
  output$distPlot <- renderPlot({
      assessments %>% 
        filter(System == input$System, Test == input$Test, Subject == input$Subject) %>% 
        # Removing Met/Exceeded
        select(-c('Met', 'Exceeded')) %>% 
        # Pivoting Longer
        pivot_longer(Below:Approaching:Met.Exceeded, names_to = 'Expectations', values_to = 'Score')  %>%
        #Leveling testing categories
        mutate(Expectations = factor(Expectations, levels = c('Met.Exceeded', 'Approaching', 'Below'))) %>% 
        # Making a plot
        ggplot(aes(x=Year, y=Score, fill = Expectations)) +
        # Bar Plot
        geom_bar(stat = "identity") +
        #Changing legend
        scale_fill_discrete(labels=c('Met or Exceeded', 'Approaching', 'Below')) +
        # Plot Title  
        ggtitle(paste(input$System, '\n', input$Test, "Scores for", input$Subject)) +
        # Plot Axis Labels
        labs(x ="Year", y = "Percent") +
        theme(#legend.position = "top", 
          plot.title = element_text(hjust = 0.5, size = rel(2.5)),
          axis.title.y = element_text(size = rel(2)),
          axis.title.x = element_text(size = rel(2)),
          axis.ticks = element_blank(),
          axis.text.x = element_text(size = rel(2)),
          axis.text.y = element_blank(),
          panel.grid.major.y = element_blank(),
          panel.grid.minor.y = element_blank(),
          panel.grid.major.x = element_blank(),
          panel.grid.minor.x = element_blank(),
          legend.title.align=0.5,
          legend.title = element_text(size = rel(2.2)),
          legend.text = element_text(size = rel(2)),
          text = element_text(size = 9)
        ) +
        geom_text(aes(data = Score , label = Score), position = position_stack(vjust = .5), size = rel(5), color = "black")
      })

})
