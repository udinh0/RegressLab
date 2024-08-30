graficos = function(x, y, predicoes) {
  df = cbind(x, y)
  colnames(df) = c("x", "y")
  
  g = df %>% 
    ggplot(aes(x = x, y = y)) +
    geom_point() +
    geom_vline(xintercept = predicoes, col = "red", lty = 2) +
    labs(x = "Valores preditos", y = "Valores observados", title = "Observados vs Preditos")
  return(g)
}

