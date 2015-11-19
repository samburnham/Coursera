library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Body Mass Index (BMI) prediction"),
    sidebarPanel(
      numericInput('height', 'height (cm)', 165, min = 50, max = 250, step = 1),
      numericInput('weight', 'weight (kg)', 60, min = 35, max = 150, step = 1),
      actionButton("goButton", "Calculate")
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered a height of'),
      verbatimTextOutput("height"),
      h4('You also entered a weight of'),
      verbatimTextOutput("weight"),
      h4('Which resulted in a BMI of '),
      verbatimTextOutput("prediction")
    )
  )
)