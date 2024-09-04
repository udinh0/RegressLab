graficos = function(x, y, predicoes) {
  df = cbind(x, y)
  colnames(df) = c("x", "y")
  
  legend_data = data.frame(
    intercept = predicoes[1],
    color = "Valores preditos"
  )
  
  g = df %>% 
    ggplot(aes(x = x, y = y)) +
    geom_point() +
    geom_vline(xintercept = predicoes, color = "red", linetype = "dashed", show.legend = TRUE, size = 0.5) +
    geom_vline(data = legend_data, aes(xintercept = intercept, color = color), linetype = "dashed", size = 0.5, show.legend = TRUE) + 
    scale_color_manual(name = "Legenda", values = c("Valores preditos" = "red")) +
    labs(x = "Valores preditos no conjunto de dados", 
         y = "Valores observados", 
         title = "Observados vs Preditos",
         color = "Legenda")
  return(g)
}


