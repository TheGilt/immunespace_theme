#' @title theme_immune_space
#' @name theme_immune_space
#' @description Modifies graphs to recreate the colors and format of
#' ImmuneSpace graphs
#' @examples
#' library(ggplot2)
#' #Violinplot
#' p <- ggplot(mtcars, aes(factor(cyl), mpg)) + ggtitle("Violin Plot") + theme_immune_space() + geom_violin()
#' p + geom_jitter()
theme_immune_space <- function() {
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
