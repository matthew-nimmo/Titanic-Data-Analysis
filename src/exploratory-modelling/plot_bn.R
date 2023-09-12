plot_bn <- function(m, dag.layout="gem", highlight="none") {
  g <- as.igraph(m) %>%
    graph2dagitty() %>%
    tidy_dagitty(layout = dag.layout,
                 seed = 2022)
  g <- g %>%
    ggplot(aes(x = x,
               y = y,
               xend = xend,
               yend = yend)) +
    geom_dag_edges(aes(start_cap = ggraph::circle(4, "mm"),
                       end_cap = ggraph::circle(4, "mm")),
                   edge_colour = "grey70",
                   edge_width = 0.2) +
    geom_dag_text(aes(color = I(ifelse(name == highlight, "red", "black"))),
                  size = 4) +
    theme_dag() +
    theme(plot.margin = unit(c(0.1, 0.1, 0.1, 0.1), "cm"))

  return(g)
}