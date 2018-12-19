#' @export
spring <- function(...) {
  reactR::React$Spring(...)
}

#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
springwidget <- function(data, ...) {
  htmlwidgets::createWidget(
    name = 'springwidget',
    list(tag = reactR::component("Fragment", c(list(data = data, ...)))),
    width = NULL,
    height = NULL,
    package = 'springwidget',
    elementId = NULL
  )
}

#' Shiny bindings for springwidget
#'
#' Output and render functions for using springwidget within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a springwidget
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name springwidget-shiny
#'
#' @export
springwidgetOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'springwidget', width, height, package = 'springwidget')
}

#' @rdname springwidget-shiny
#' @export
renderSpringwidget <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, springwidgetOutput, env, quoted = TRUE)
}

# Magical
springwidget_html <- function(id, style, class, ...) {
  tagList(
    reactR::html_dependency_corejs(),
    reactR::html_dependency_react(),
    reactR::html_dependency_reacttools(),
    tags$div(id = id, class = class)
  )
}
