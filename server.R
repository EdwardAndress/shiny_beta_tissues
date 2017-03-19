library(shiny)

load('./data/beta_tissues.RData')
# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should be automatically
  #     re-executed when inputs change
  #  2) Its output type is a plot

  output$distPlot <- renderPlot({
    x1 <- beta[,input$sample_one]  # Old Faithful Geyser data
    x2 <- beta[,input$sample_two]  # Old Faithful Geyser data
    bins <- seq(min(c(x1, x2)), max(c(x1, x2)), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x1, breaks = bins, col = 'darkgray', border = 'white')
    hist(x2, breaks = bins, col = 'lightgray', border = 'white', add = TRUE)
  })
})
