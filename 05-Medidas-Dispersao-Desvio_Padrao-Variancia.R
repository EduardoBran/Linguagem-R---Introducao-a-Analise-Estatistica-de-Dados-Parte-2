# Medidas de Dispersão - Desvio Padrão e Variância

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()


# - As medidas de tendência central (moda, valores max e min, amplitude, quartil e percentil) nos ajudam a descrever a 
#   a centralidade e posicionamento dos dados.

# - Logo, as medidas de tendência central seriam suficientes para descrever os dados? Não.
# - Precisamos também das medidas de dispersão (desvio padrão e variância)

# - Combinando as medidas de tendência central e dispersão, obtemos uma visão mais abrangente das características dos dados.



##### Desvio Padrão #####


# - O desvio padrão indica o grau de variação de um conjunto de dados, este conjunto pode ser amostral ou ou populacional.

# - Para um conjunto amostral o desvio padrão é dado pelo somatório da raiz quadrada do quadrado da diferença entre o valor do
#   dado coletado (xi) e o valor médio (x), dividido pelo tamanho amostral menos um (n - 1).

# - O desvio padrão mede a dispersão dos dados em relação à média. Quanto maior o desvio padrão, maior é a variação dos dados
#   em relação à média, indicando maior dispersão ou heterogeneidade dos valores. Por outro lado, um desvio padrão menor indica
#   menor variação dos dados em relação à média, indicando maior homogeneidade ou consistência dos valores.

# - O desvio padrão é uma medida importante para entender a dispersão dos dados e avaliar a variabilidade dos valores em um
#   conjunto de dados.


# Exemplo: Um engenheiro precisa decidir entre três modelos de máquinas de corte de alta precisão, para isso ele usa como
#          critério o desvio padrão. A máquina que tiver menor desvio será a escolhida por ele. A partir dos dados de
#          medida de corte das 3 máquinas em milímetros, determine qual deve ser a escolhida pelo engenheiro.

# Máquina 1 (mm) = (181.9, 180.8, 181.9, 180.2, 181.4). 
# Máquina 2 (mm) = (180.1, 181.8, 181.5, 181.2, 182.4). 
# Máquina 3 (mm) = (182.1, 183.7, 182.1, 180.2, 181.9).

Maq1 = c(181.9, 180.8, 181.9, 180.2, 181.4)
Maq2 = c(180.1, 181.8, 181.5, 181.2, 182.4)
Maq3 = c(182.1, 183.7, 182.1, 180.2, 181.9)

mean(Maq1)  # 181.24
mean(Maq2)  # 181.4
mean(Maq3)  # 182

# - Neste caso apenas com os valores das médias de cada corte de máquina, não conseguiríamos responder a pergunta de negócio,
#   nem se usássemos a mediana ou moda porque não temos como saber a variebilidade (poderíamos ter valores extremos que
#   estariam afetando a média)

sd(Maq1)    # 0.7368853
sd(Maq2)    # 0.8514693
sd(Maq3)    # 1.240967

# - Agora com os resultados do desvio padrão de cada máquina, detectamos que a Maq1 tem o menor valor de variabilidade e
#   por isso tem um nível maior de precisão.


# exemplo 2

dados2 = c(1,2,1,1,2,1,2,1,2,1,2,1,2,1,2,3,1,3,1,3,1,3,1,2,1,2,2,2,2,2,2,3,3,3,3,2,2,2,2,1,1,1,1)
dados3 = c(123123,1,312312,2,3123123,2,12312321,5,312312,1,12312321,2)

sd(dados2)
sd(dados3)

# dados2 tem um desvio padrão de  0.7418811 e por isso tem uma menor variabilidade dos valores.
# dados3 tem um desvio padrão de  4724062e por isso tem uma alta variabilidade dos valores.





##### Variância #####


# - A variância também é um importante indicador de variabilidade dos dados.
# - Como a soma dos desvios sempre somarão zero, é necessário usar a medidade de variabilidade que torne os desvios negativos
#   em valores não negativos, para que a soma dos desvios represente um valor de variabilidade do conjunto de dados
#   diferente de zero.

# - A variância então é o quadrado do desvio padrão.

# - As medidas amostrais tem n-1 graus de liberdade. 
# - Graus de liberdade é a diferença entre a dimensão da amostra (n) e a quantidade de parâmetros a serem avaliados na
#   população.

# - No caso da variância amostral, é usada como referência a média da amostra e isso tornaria o valor da variância amostral
#   menor que o da variância populacional, devido aos valores coletados estarem mais próximos da média amostral.

# - Para corrigir isso o divisor perde 1 grau de liberdade e quando se trata das medidas amostras utilizamos o n-1.


# Cálcula da variância para o exemplo anterior:

var(Maq1)
var(Maq2)
var(Maq3)


# - Portanto, a variância de Maq1 é a menor em relação aos outros conjuntos, indicando uma menor dispersão dos dados em
#   torno da média. Isso confirma a conclusão anterior de que a Maq1 apresenta maior precisão em relação às outras máquinas.

# - A variância pode ser interessante para que possamos trabalhar com resultados negativos.


