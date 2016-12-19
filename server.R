library(shiny)
library(dplyr)

# Define server logic required to plot various variables against mpg
shinyServer(function(input, output) {
  
  capText <- reactive({
    paste0("Price Chart for ", input$variable)
  })
  
  output$caption <- renderText({
    capText()
  })
  
  indText <- reactive({
    paste0("Chart for ", j2$ind, " Index")
  })
  
  output$icaption <- renderText({
    indText()
  })
  
  output$stockPlot <- renderPlot({
    df <- subset(j2, Symbol == input$variable) %>% arrange(Date)
    plot(df$Date, df$Close, xlab = "Date", ylab = "Closing Price", 
         col = "Red", type = 'l')})
  
  output$indexPlot <- renderPlot({
    df <- subset(j2, Symbol == input$variable) %>% arrange(Date)
    plot(df$Date, df$ind_Close, xlab = "Date", ylab = "Index Value", 
         col = "Blue", type = 'l')})
  
})