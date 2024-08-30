
# README

\*como executar o produto:

Para execução do produto, deve-se carregar a tabela de dados, em formato
.csv na área de “configuracao.yaml”, basta entrar com o nome do arquivo
em “dados: *nomedoarquivo.csv*”, escolher um dos dois “metodo: *linear*
ou *LASSO*” (se nenhum método for escolhido, o método utilizado é o
linear), especificar as variaveis de interesse, no seguinte formato:
“Variaveis: Resposta:”x1”: *nomevariavel1* “x2”: *nomevariavel2*” e
assim por diante, até que contenha todas as variáveis resposta de
interesse.

Para encerrar a parte de “configuracao.yaml”, basta escolher a variável
preditora ou a variável que tem interesse em realizar o estudo,
“Preditoras:”y”: *nomevariavelresposta*”

Após esta primeira parte, deve-se adicionar os valores das alterações
que se deseja observarem “predicoes.json”, por exemplo:

\[ {“Petal.Length”: 4, “Petal.Width”: 3}\]

isto é, para 4 unidades adicionadas de “Petal.Length” e 3 unidades
adicionadas de “Petal.Width”, quanto o resultado final irá alterar.

Feito esses dois procedimentos, basta rodar o arquivo “main.R” e clicar
na pasta “saidas” para observar os resultados.

**OBS:** Para a regressão LASSO, o usúario **DEVE** inserir pelo menos
duas variáveis dependentes.
