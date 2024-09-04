library(glue)
library(readr)
library(dplyr)
library(yaml)
library(jsonlite)
library(ggplot2)
library(glmnet)
source("scripts/treinamento.R")
source("scripts/predicao.R")
source("scripts/graficos.R")


config = read_yaml("configuracao.yaml")
dados = read_csv(glue("entradas/{config$dados}"), show_col_types = FALSE)
pred = read_json("entradas/predicoes.json")

vec = numeric(length(config$variaveis$Resposta))
  for (i in 1:length(config$variaveis$Resposta)) {
    vec[i] = config$variaveis$Resposta[[i]]
  }

fit = regression(metodo = config$metodo,
                 preditora = config$variaveis$Preditoras$y, 
                 respostas = vec,
                 dados = dados)

write_rds(fit, "saidas/fit.rds")
write_json(toJSON(predict_function(pred)), "saidas/predicoes_regressao.json")
ggsave("saidas/grafico.pdf", plot = graficos(predict(fit, newx = as.matrix(dados[vec])), 
                                             dados[config$variaveis$Preditoras$y], 
                                             predict_function(pred)))
rm(list = ls())

