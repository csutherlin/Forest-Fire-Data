
library(shiny)
library(shinythemes)

# Define UI for application that draws a histogram
shinyUI(fluidPage(theme = shinytheme("cerulean"),
  
  # Application title
  titlePanel("Scatterplot of Variables in Forest Fire Data"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput(inputId = "VarX",
                  label = "Select X-axis Variable:",
                  choices = list("X", "Y", "FFMC",
                                 "DMC", "DC","ISI","temp","RH","wind","rain","area")),
      selectInput(inputId = "VarY",
                  label = "Select Y-axis Variable:",
                  choices = list("X", "Y", "FFMC",
                                 "DMC", "DC","ISI","temp","RH","wind","rain","area")),
      
    ),
    
    mainPanel(
      plotOutput("scatter"),tags$img(src="Picture3.png",height=350,width=600)
     
    )
  )
))
