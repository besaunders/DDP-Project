
shinyServer(
  function(input, output) {
    output$newHist <- renderPlot({
      wprob <- input$wprob
      ngame <- input$ngame
      wtot <- vector()
      for (i in 1:100) {
        wtot[i] <- rbinom(1,ngame,wprob)
      }
      hist(wtot, xlab='Number of Wins', col='lightblue',main='Histogram')
      output$avgwin <- renderPrint({mean(wtot)})
      })
  }
)