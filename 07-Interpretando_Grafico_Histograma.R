# Interpretando o gráfico Histograma

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



#####  Histograma  #####

# - Um histograma é um modelo de gráfico que representa uma distribuição de frequências através de um agrupamento de classes,
#   de forma que se pode contabilizar as ocorrências dos dados em cada classe.

# - Possibilita visualizar a distribuição de medidas, a dispersão, simetria dos dados e tendências centrais.

# - Os conceitos de Frequência Absoluta e Frequência Relativa são importantes na construção de um histograma.

# - Por frequência absoluta, entende-se o número de observações correspondente a cada classe.
# - Por frequência relativa, por sua vez, diz respeito ao quociente entre a frequência absoluta da classe correspondente
#   e a soma das frequências absolutas.

# - A soma das áreas de todos os retângulos do histograma deve ser igual a 1.

# - Como fazer um histograma manualmente?

# 1 - Ordenar os valores
# 2 - Encontrar a amplitude total: A = xmax - xmin. Assim os intervalos devem cobrir uma faixa de, no mínimo, o valor da amplitude.
# 3 - Estimar o número de classes: 2k ≤ n. Sendo que n é igual a raiz quadrada do npumero total de observações.
# 4 - Estimar o tamanho de cada intervalo de classe: C = A/k
# 5 - contar o número de observações que caem em cada intervalo de classe (subintervalo), frequência.
# 6 - Determinar a frequência relativa do intervalo: Frequência relativa = frequência / total de observações.
# 7 - Construir o gráfico.
# 8 - Podemos fazer todo o passo a passo acima utilizado a função hist()


# Exemplo: Os seguintes dados representam o número (colocados em ordem crescente) de acidentes diários em um complexo
#          industrial, durante o período de 50 dias. Represente o histograma desses dados.

dados = c(18, 20, 20, 21, 22, 24, 25, 25, 26, 27, 29, 29, 
          30, 30, 31, 31, 32, 33, 34, 35, 36, 36, 37, 37, 
          37, 37, 38, 38, 38, 40, 41, 43, 44, 44, 45, 45, 
          45, 46, 47, 48, 49, 50, 51, 53, 54, 54, 56, 58, 62, 65)

# Criação do histograma

hist(dados, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência")

# Criação do histograma com 6 intervalos de classe

hist(dados, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência", breaks = 6)


# Interpretando o histograma com 6 intervalos (breaks)

# - É um histograma simétrico, pois se traçarmos uma linha imaginária no meio do histograma teríamos o mesmo número de ocorrências
#   para a esquerda e para a direita.
# - Mas nem sempre ele será simétrico, ele pode ter mais números de ocorrências na esquerda do que na direita e vice e versa, por isso a
#   importância de calculcar o coeficiente de simetria, com o coeficiente já saberemos se os dados estão ou não simétricos.
# - Caso estejam assimétricos talvez tenhamos de aplicar alguma técnica de transformação antes de aplicar ao modelo de machine learning.






# criando histograma usando dataframe

dados_df <- data.frame(acidentes = dados)
View(dados_df)
hist(dados_df$acidentes, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência")


# usando ggplot

library(ggplot2)

ggplot(dados_df, aes(x = acidentes)) +
  geom_histogram(binwidth = 4, fill = "orange", color = "black") +
  labs(title = "Número de Acidentes Diários", x = "Acidentes", y = "Frequência")

ggplot(dados_df, aes(x = acidentes)) +
  geom_histogram(binwidth = 6, fill = "blue", color = "black") +
  labs(title = "Número de Acidentes Diários", x = "Acidentes", y = "Frequência")



library(moments)

# Cálculo da assimetria de Pearson
assimetria_pearson <- skewness(dados)
assimetria_pearson  # 0.2549279
