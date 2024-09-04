regression = function(metodo, preditora, respostas, dados) {
  
  if (tolower(metodo) == "lasso") {
  x = as.matrix(dados[vec])
  y = as.matrix(dados[preditora[[1]]])
  fit = cv.glmnet(x, y, alpha = 1)
  }
  
  else {
    formula = as.formula(paste(glue("{preditora} ~"), paste(vec, collapse = " + ")))
    fit = lm(formula, data = dados)
  }
  return(fit)
}





