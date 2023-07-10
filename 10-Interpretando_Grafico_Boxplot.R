# Interpretando o gráfico BoxPlot

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()


#####  Boxplot  #####

# - Um BoxPlot, ou diagrama de caixa, é possível obter informações sobre vários aspectos dos dados simultaneamente como:
#   outliers, dispersão, tendências centrais, erros padrão e simetria.

# - Utilizado também para avaliar a distribuição empírica dos dados, é formado por um retângulo (a "caixa") que representa o intervalo
#   entre o primeiro quartil (Q1) e o terceiro quartil (Q3). A linha dentro da caixa representa a mediana (Q2).


# Exemplo: Os seguintes dados representam o número (colocados em ordem crescente) de acidentes diários em um complexo
#          industrial, durante o período de 50 dias. Represente o histograma desses dados.

dados = c(18, 20, 20, 21, 22, 24, 25, 25, 26, 27, 29, 29, 
          30, 30, 31, 31, 32, 33, 34, 35, 36, 36, 37, 37, 
          37, 37, 38, 38, 38, 40, 41, 43, 44, 44, 45, 45, 
          45, 46, 47, 48, 49, 50, 51, 53, 54, 54, 56, 58, 62, 65)

# analisando dados

mean(dados)       # 38.32
sd(dados)         # 11.58366
median(dados)     # 37
range(dados)      # 18 65
quantile(dados)   #  0%     25%     50%     75%    100% 
#                  18.00   30.00   37.00   45.75   65.00 


# Criação do boxplot

boxplot(dados, main = 'Número de Acidentes Diários')


# interpretando o gráfico

# - o traço final é o valor mínimo (18), o traço no alto é o valor máximo (65)
# - agora vamos olhar para a a caixa, a primeira linha/traço da caixa é o 1º quartil (30),
#   a segunda linha/traço (mais grossa dentro da caixa) é o 2º quartil ou mediana (37),
#   a terceira linha/traço é o 3º quartil (45.75)




# - 1º Calcule as estatísticas (mean, sd, median, range e quantile)
# - 2º Crie o histograma
# - 3º Crie o boxplot
# - 4º Trabalhe na limpeza e processamento dos dados
# - 5º Crie novamente o histograma e boxplot com dados limpos e processados










dados2 = c(1,2,1,1,2,1,2,1,2,1,2,1,2,1,2,3,1,3,1,3,1,3,1,2,1,2,2,2,2,2,2,3,3,3,3,2,2,2,2,1,1,1,1)
dados3 = c(123123,1,312312,2,3123123,2,12312321,5,312312,1,12312321,2)

sd(dados2)
sd(dados3)

# dados2 tem um desvio padrão de  0.7418811 e por isso tem uma menor variabilidade dos valores.
# dados3 tem um desvio padrão de  4724062e por isso tem uma altavariabilidade dos valores.
