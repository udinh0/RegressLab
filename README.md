
# README

## Introdução

Este produto tem como objetivo produzir predições com diferentes
algoritmos e gráficos para um problema de regressão em um conjunto de
dados fornecido pelo usuário. Para utilizar este produto, é necessário
ter o RStudio instalado no seu computador. Para realizar o donwload,
basta seguir as instruções contidas no site
[](https://posit.co/download/rstudio-desktop/). Após realizar o
download, estará apto para utilizar o produto.

Para que o produto funcione com a sua base de dados e suas variáveis de
interesse, é importante que você altere os nomes dos arquivos e
variáveis, seguindo o passo a passo abaixo:

## Passo 1: Configuração Inicial

### 1. Carregue os Dados:

Na área de configuração, abra o arquivo configuracao.yaml. Insira o nome
do arquivo de dados em formato .csv no campo dados. Por exemplo:

``` yaml
dados: nomedoarquivo.csv
```

### 2. Escolha o Método de Regressão:

Especifique o método de regressão a ser utilizado em metodo. As opções
disponíveis são linear e LASSO. Se não especificado, o método padrão
será o linear. Exemplo:

``` yaml
metodo: linear (ou LASSO).
```

### 3. Defina as Variáveis de Interesse:

Indique as variáveis preditoras no campo Variaveis. Use o seguinte
formato:

``` yaml
dados: dados.csv
metodo: linear (ou LASSO)
variaveis:
  Resposta:
    "x1": variavel_resposta1
    "x2": variavel_resposta2
    "x3": variavel_resposta3
  Preditoras:
    "y": variavel_preditora
```

Salve as alteracões feitas em configuracao.yaml.

## Passo 2: Adicione as Previsões

### 1. Especifique as Alterações:

Dentro da pasta entradas, edite o arquivo predicoes.json da seguinte
forma:

``` json
[  
{"variavel_resposta1": 2, "variavel_resposta2": 4,"variavel_resposta3": 3}
]
```

Salve o arquivo predicoes.json. Neste exemplo, o sistema calculará como
a alteração de 2 unidades em “nomevariavel1”, 4 unidades em
“nomevariavel2” e 3 unidades em “nomevariavel3” afetará o resultado
final.

## Passo 3: Execute o Código

### 1. Rodando o Script:

Execute o arquivo main.R. Os resultados serão gerados e poderão ser
encontrados na pasta “saidas”.

**Observação Importante:**

Regressão LASSO: Para utilizar o método LASSO, é obrigatório inserir
pelo menos duas variáveis dependentes.

## Passo 4: Interpretação dos resultados

Na pasta predicoes.json será possível verificar o valor numérico da
regressão escolhida. O script criará um pdf que conterá o gráfico com os
dados analisados e o(s) resultado(s) da(s) regressão(ões). Para análise
do gráfico observar a(s) linha(s) vermelha(s) tracejada(s) e verificar
se os dados preditos estão próximos aos dados observados.
