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
  
}

ui <- fluidPage(
  plotOutput("plot"), # container for the scatterplot
  # I use a generic name like plot because in this example
  # we don't have any other plot. But this is not a very
  # good name.
  # Try to use name more descriptive like "mainPlot", 
  # "topPlot", "scatterPlot", "correlationPlot"...
  #
  # Note the comma after plotOutput :) If your nodes
  # are sibling you have to use a comma.
  #
  # parent(firstSibling(), secondSibling()) # CORRECT!
  # parent(
  #    firstSibling(),# CORRECT. It's the same but with indentation
  #    secondSibling()
  # )
  
  # parent(
  #    firstSibling()  # ERROR: typical one. There's no separator
  #                    #        between parameters
  #    secondSibling(), # ERROR2: other typical. The last sibling
  #                     # doesn't need a comma after it
  # )
  
  tabsetPanel(
    # Empty tabset panel. The fun will be here.
  )
  
)

shinyApp(ui = ui, server = server)