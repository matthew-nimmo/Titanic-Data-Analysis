add_percent_label <- function(p) {
  pd <- ggplot_build(p)$data %>%
    as.data.frame() %>%
    filter(.wt > 0)
  
  pn <- names(pd)[grepl("x__[^fill]", names(pd))]
  pd$group <- pd[[pn]]
  
  pd <- pd %>%
    group_by(group) %>%
    mutate(percentage = paste0(round(100 * .wt / sum(.wt), 1), "%"))
  
  p + geom_label(data = pd,
                 aes(x = (xmin + xmax) / 2,
                     y = (ymin + ymax) / 2,
                     label = percentage),
                 size = 2.5)
}