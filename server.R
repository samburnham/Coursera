BMI<-function(weight, height) round(weight/((height/100)^2), digits=2)
shinyServer(
  function(input, output) {
    output$height <- renderPrint({input$height})
    output$weight <- renderPrint({input$weight})
    output$prediction <- renderPrint({BMI(input$weight, input$height)})
  }
)
