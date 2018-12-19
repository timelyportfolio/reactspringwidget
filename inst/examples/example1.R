library(reactR)
library(htmltools)
library(springwidget)

browsable(
  tagList(
    rmarkdown::html_dependency_jquery(),
    springwidget(data=NULL, tags$div())
  )
)
