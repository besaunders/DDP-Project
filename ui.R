shinyUI(pageWithSidebar(
  headerPanel("Expected number of wins given binomial probability"),
  sidebarPanel(
    numericInput('wprob','Probability of win', 0.5, min=0.5, max=0.95, step = 0.05),
    numericInput('ngame','Number of games', 4, min=1, max=100, step = 1),
    submitButton('Submit')
  ),
  mainPanel(
    plotOutput('newHist'),
    h4('Average wins'),
    verbatimTextOutput("avgwin")
  )
))
