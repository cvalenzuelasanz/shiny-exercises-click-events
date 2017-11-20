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


### FIRST STEP
# We made the empty boilerplate for a shiny app.
# In this case we use the single-file format to help
# to track the changes over the git history.
#
# You should be capable of write this without any external help
# To test it you can run it and check anything breaks :)
# Hint: In Rstudio the play button ("Run App") only appears after
# you save this file.

library(shiny)

server <- function(input, output) {
  
}

ui <- fluidPage(
  
)

shinyApp(ui = ui, server = server)