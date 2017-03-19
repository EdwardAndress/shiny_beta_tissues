library(shiny)

load('./data/beta_tissues.Rdata')

shinyServer(function(input, output, session) {

  output$distPlot <- renderPlot({
    x1 <- beta[, input$sample_one]
    x2 <- beta[, input$sample_two]
    bins <- seq(min(c(x1, x2)), max(c(x1, x2)), length.out = input$bins + 1)

    hist(x1, breaks = bins, col = 'darkgray', border = 'white')
    hist(x2, breaks = bins, col = 'lightgray', border = 'white', add = TRUE)
  })

  updateSelectInput(session, "sample_one",
      choices = colnames(beta)
  )

  updateSelectInput(session, "sample_two",
      choices = colnames(beta)
  )
})
