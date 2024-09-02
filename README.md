
# README

## Passo 1: Configuração Inicial

### 1. Carregue os Dados:

Na área de configuração, abra o arquivo configuracao.yaml. Insira o nome
do arquivo de dados em formato .csv no campo dados. Por exemplo:

dados: nomedoarquivo.csv

### 2. Escolha o Método de Regressão:

Especifique o método de regressão a ser utilizado em metodo. As opções
disponíveis são linear e LASSO. Se não especificado, o método padrão
será o linear. Exemplo:

metodo: linear (ou LASSO).

### 3. Defina as Variáveis de Interesse:

Indique as variáveis preditoras no campo Variaveis. Use o seguinte
formato:

Salve as alteracões feitas em configuracao.yaml.

## Passo 2: Adicione as Previsões

### 1. Especifique as Alterações:

Dentro da pasta entradas, edite o arquivo predicoes.json da seguinte
forma:

\[{“nomevariavel1”: 2, “nomevariavel2”: 4, “nomevariavel3”: 3}\]

Salve o arquivo predicoes.json. Neste exemplo, o sistema calculará como
a alteração de 2 unidades em “nomevariavel1”, 4 unidades em
“nomevariavel2” e 3 unidades em “nomevariavel3” afetará o resultado
final.

## Passo 3: Execute o Código

### 1. Rodando o Script:

Execute o arquivo main.R. Os resultados serão gerados e poderão ser
encontrados na pasta “saidas”.

Observação Importante:

Regressão LASSO: Para utilizar o método LASSO, é obrigatório inserir
pelo menos duas variáveis dependentes.

## Passo 4: Interpretação dos resultados

Na pasta predicoes.json será possível verificar o valor numérico da
regressão escolhida. O script criará um pdf que conterá o gráfico com os
dados analisados e o(s) resultado(s) da(s) regressão(ões). Para análise
do gráfico observar a(s) linha(s) vermelha(s) tracejada(s) e verificar
se os dados preditos estão próximos aos dados observados.
