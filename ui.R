library(shiny)

Stock <- unique(j2$Symbol)

# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Stock Chart vs. Index Chart"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  
  sidebarPanel(
    selectInput("variable", "Stock Symbol:",
                list(Stock = Stock))), 
  
  #sliderInput("date", "Date:", 
  #            min = '2014-12-17', max = '2016-12-16', 
  #            value = c('2015-03-26','2016-03-26'))
  
  mainPanel(
    tabsetPanel(
      tabPanel("Stock Chart", plotOutput("stockPlot")),
      tabPanel("Index Chart", plotOutput("indexPlot"))
    #h3(textOutput("caption")),
    #h3(textOutput("icaption")
  ))
))