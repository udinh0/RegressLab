library(glue)
library(readr)
library(dplyr)
library(yaml)
library(jsonlite)
library(ggplot2)
<<<<<<< HEAD
library(glmnet)
source("scripts/treinamento.R")
source("scripts/predicao.R")
source("scripts/graficos.R")
=======
source("treinamento.R")
source("predicao.R")
source("graficos.R")
>>>>>>> 4f6a844d7b49f2f635109e061a321f174c70657d

config = read_yaml("configuracao.yaml")
dados = read_csv(glue("entradas/{config$dados}"), show_col_types = FALSE)
pred = read_json("entradas/predicoes.json")

fit = regression(metodo = config$metodo,
           preditora = config$variaveis$Preditoras$y, 
           respostas = config$variaveis$Resposta,
           dados = dados)

vec = numeric(length(config$variaveis$Resposta))
  for (i in 1:length(config$variaveis$Resposta)) {
    vec[i] = config$variaveis$Resposta[[i]]
}

<<<<<<< HEAD
write_rds(fit, "saidas/fit.rds")
write_json(toJSON(predict_function(pred)), "saidas/predicoes_regressao.json")
ggsave("saidas/grafico.pdf", plot = graficos(predict(fit, newx = as.matrix(dados[vec])), 
                                             dados[config$variaveis$Preditoras$y], 
                                             predict_function(pred)))
rm(list = ls())
=======
fitted = predict(fit, newx = as.matrix(dados[vec]))

predicoes = predict_function(pred)
x = dados[config$variaveis$Preditoras$y] - fitted
y = dados[config$variaveis$Preditoras$y]

write_rds(fit, "saidas/fit.rds")
write_json(toJSON(predict_function(pred)), "saidas/predicoes_regressao.json")
ggsave("saidas/grafico.pdf", plot = graficos(x, y, predicoes))
>>>>>>> 4f6a844d7b49f2f635109e061a321f174c70657d
