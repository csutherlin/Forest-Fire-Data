library(shiny)
library(ggplot2)


shinyServer(function(input, output) {
  
  output$scatter <- renderPlot({
    
    ff <- ffnumnoxy[ ,c(input$VarX,input$VarY)]
    
    ggplot(data = ff, aes(x=ff[,1],y=ff[,2]))+
      geom_point(position = "jitter",
                 color = "red",
                 alpha = 1/5,
                 size = 3.5)+
      labs(x=colnames(ff)[1], y=colnames(ff)[2], 
           title = paste("Scatter Plot of", input$VarX, "Vs", input$VarY))
    
    
  })
  
})
