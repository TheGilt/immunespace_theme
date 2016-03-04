#' @title theme_immune_space
#' @name theme_immune_space
#' @description Modifies graphs to recreate the colors and format of
#' ImmuneSpace graphs
#' @examples
#' library(ggplot2)
#' #Violinplot
#' p <- ggplot(mtcars, aes(factor(cyl), mpg)) + ggtitle("Violin Plot") + theme_immune_space() + geom_violin()
#' p + geom_jitter()
#' @import ggplot2
#' @export
theme_immune_space <- function() {
  theme_scale()
  theme_classic() +
    #theme(text = element_text(size = text_size)) +
    theme(axis.text.x = element_text(angle = 45)) +
    theme(panel.background = element_rect(fill="#FDF6E3")) +
    theme(panel.grid.major = element_line(colour = "#ded8d5", linetype = "dotted")) +
    theme(panel.grid.minor = element_line(colour = "#FDF6E3", linetype = "dotted")) +
    theme(axis.ticks = element_line(size = 0)) +
    theme(axis.line = element_line(size = 0.5, colour = "black")) +
    theme(plot.title = element_text(size = rel(1))) +
    theme(strip.background = element_rect(colour = "white", fill = "white"))
}
##Setting colors
#' @importFrom scales seq_gradient_pal
theme_scale <- function(envir = as.environment(1)){                    
  scale_updates <- list(                                                        
    scale_colour_gradient = function(...) continuous_scale('colour', 'ggthemr', seq_gradient_pal("#268bd2", "#dc322f"), ...),
    scale_colour_continuous = function(...) continuous_scale('colour', 'ggthemr', seq_gradient_pal("#268bd2", "#dc322f"), ...)
  )                                                                             
  
  Map(                                                                          
    function (name, f) assign(name, f, envir = envir),                          
    names(scale_updates),                                                       
    scale_updates                                                               
  )                                                                             
}
