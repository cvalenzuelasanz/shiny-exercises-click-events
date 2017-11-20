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
  tabsetPanel( # tabset for the results (click, double click..)
    
    tabPanel(title = "Click", # you don't need to write "title ="
                              # but it's a good idea to remember
                              # what's that in the future.
             
             # Yeah, a comma ^
             
             tableOutput("clickTable") # Good naming. I'll be able
                                       # to remember what's for
                                       # this table when I'll write
                                       # the server.
             
             ),
    # I'm going to write next tabPanels in one line because
    # they're short and clear enought to make my code clean
    # and concise
    #
    # SUPER important make your code clear, easy to read.
    #
    tabPanel(title = "Double Click", tableOutput("dblclickTable")),
    tabPanel(title = "Hover", tableOutput("hoverTable"))
    
                                         # No comma here ^
  )
  
)

shinyApp(ui = ui, server = server)