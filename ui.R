library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Hello Shiny!"),

  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30),
      selectInput("sample_one", "Sample one", choices = colnames(beta)),
      selectInput("sample_two", "Sample two", choices = colnames(beta))
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot"),
      plotOutput("densityPlot")
    )
  )
))
