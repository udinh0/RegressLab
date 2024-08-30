
# README

## Como Executar o Produto

### Passo 1: Configuração Inicial

1.  Carregue os Dados:

Na área de configuração, abra o arquivo configuracao.yaml. Insira o nome
do arquivo de dados em formato .csv no campo dados. Por exemplo:

- dados: “nomedoarquivo.csv”

2.  Escolha o Método de Regressão:

Especifique o método de regressão a ser utilizado em metodo. As opções
disponíveis são linear e LASSO. Se não especificado, o método padrão
será o linear. Exemplo:

- metodo: “linear” (ou LASSO).

3.  Defina as Variáveis de Interesse:

Indique as variáveis preditoras no campo Variaveis. Use o seguinte
formato:

variaveis:  
Resposta:  
“x1”: “nomevariavel1”  
“x2”: “nomevariavel2” Preditoras: “y”: “nomevariavelresposta”

### Passo 2: Adicione as Previsões

1.  Especifique as Alterações:

Adicione os valores das alterações desejadas no arquivo predicoes.json.
Por exemplo:

\[ {“Petal.Length”: 4, “Petal.Width”: 3}\]

Neste exemplo, o sistema calculará como a alteração de 4 unidades em
Petal.Length e 3 unidades em Petal.Width afetará o resultado final.

### Passo 3: Execute o Código

1.  Rodando o Script:

Execute o arquivo main.R. Os resultados serão gerados e poderão ser
encontrados na pasta saidas.

Observação Importante:

Regressão LASSO: Para utilizar o método LASSO, é obrigatório inserir
pelo menos duas variáveis dependentes.
