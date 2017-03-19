library(shiny)

shinyUI(fluidPage(

  titlePanel("Hello Shiny!"),

  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30),
      selectInput("sample_one", "Sample one", choices = c('Please wait')),
      selectInput("sample_two", "Sample two", choices = c('Please wait'))
    ),

    mainPanel(
      plotOutput("distPlot")
    )
  )
))
