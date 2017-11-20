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
library(ggplot2)

server <- function(input, output) {
  output$plot <- renderPlot({
    ggplot(mpg) +
      geom_point(aes(x=hwy, y=displ))
  })
  
  output$myRawOutput <- renderText({
    toString(input$myClickEvent)
  })
  
  output$clickTable <- renderTable({
    nearPoints(mpg, input$myClickEvent)
  })
  
  # The same for the rest of the tables (here and in UI)
  output$dblclickTable <- renderTable({
    nearPoints(mpg, input$myDblclickEvent)
  })
  
  # but with different IDs
  output$hoverTable <- renderTable({
    nearPoints(mpg, input$myHoverEvent)
  })
}

ui <- fluidPage(
  # Notice that I split this line in 5 to make it clearer.
  # This is a good idea in general.
  plotOutput(
    "plot",
    click = "myClickEvent",
    dblclick = "myDblclickEvent",
    hover = "myHoverEvent"
  ),
  verbatimTextOutput("myRawOutput"),
  tabsetPanel( 
    tabPanel(title = "Click", tableOutput("clickTable")),
    tabPanel(title = "Double Click", tableOutput("dblclickTable")),
    tabPanel(title = "Hover", tableOutput("hoverTable"))
  )
)

shinyApp(ui = ui, server = server)