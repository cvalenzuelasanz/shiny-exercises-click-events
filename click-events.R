# Shiny exercise
# Gather click events (click, double click and hover) from
# a simple scatterplot of mpg dataset
#
# Requirements:
# - The output of those events should be inside a tabset with 
#   three tabs, one for each event type
# - Inside each tab it have to show a table outputs all the
#   variables of the related data points (points user clicked on
#   or hover over...)
# - You can use any numeric variables for each axis in the plot of
#   the dataset
#
# This material is on a git repository to show how I develop it
# and in which order I started. This could be a help for students
# without prior programming experience.
# Specially made to teach good programming practise and first
# approach to git.
#
# Teaching material for 
# Design Data Products and Visualization Techniques
# by Alejandro Vidal (@doblepensador)

library(shiny)

server <- function(input, output) {
  # Always add brackets {} inside. We'll explain later the reason
  # If your UI has an "plotOutput" you've to use "renderPlot".
  # They've the same name: "XXXOutput" and "renderXXX"
  
  # Pay attention to we use the same id in the server and the ui
  # to connect both.
  
  # For example we use "output$plot" because in UI we used 
  # plotOutput("plot")
  output$plot <- renderPlot({
    # Here we are goint to "paint the plot"
  })
  
  # And each table are going to be here...
  output$clickTable <- renderTable({
    
  })
  
  output$dblclickTable <- renderTable({
    
  })
  
  output$hoverTable <- renderTable({
    
  })
}

ui <- fluidPage(
  plotOutput("plot"),
  tabsetPanel( 
    tabPanel(title = "Click", tableOutput("clickTable")),
    tabPanel(title = "Double Click", tableOutput("dblclickTable")),
    tabPanel(title = "Hover", tableOutput("hoverTable"))
  )
)

shinyApp(ui = ui, server = server)