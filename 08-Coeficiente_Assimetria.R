# Coeficiente de Assimetria (Skewness) 

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()


#####  Coeficiente de Assimetria  #####

# - O teste de coeficiente de assimetria nos dados antes de construir um gráfico de histograma pode ajudar a interpretar 
#   melhor os dados e o gráfico. O teste de coeficiente de assimetria fornece uma medida quantitativa da assimetria dos dados,
#   indicando a magnitude e a direção dessa assimetria.

# - Ao realizar o teste de coeficiente de assimetria, você obtém uma informação objetiva sobre a assimetria dos dados, o que
#   pode ajudar a complementar a análise visual do histograma. Isso permite uma avaliação mais precisa da distribuição dos
#   dados e ajuda a identificar padrões ou características importantes, como uma assimetria positiva (cauda longa à direita)
#   ou uma assimetria negativa (cauda longa à esquerda).

# - Portanto, embora não seja obrigatório, realizar o teste de coeficiente de assimetria antes de construir um histograma pode
#   fornecer uma maior compreensão dos dados e auxiliar na interpretação dos resultados.

# - O coeficiente de assimetria é o que permite dizer se uma determinada distribuição é assimétrica ou não.


# Exemplo: Os seguintes dados representam o número (colocados em ordem crescente) de acidentes diários em um complexo
#          industrial, durante o período de 50 dias. Represente o histograma desses dados.

dados = c(18, 20, 20, 21, 22, 24, 25, 25, 26, 27, 29, 29, 
          30, 30, 31, 31, 32, 33, 34, 35, 36, 36, 37, 37, 
          37, 37, 38, 38, 38, 40, 41, 43, 44, 44, 45, 45, 
          45, 46, 47, 48, 49, 50, 51, 53, 54, 54, 56, 58, 62, 65)

# Criação do histograma

hist(dados, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência")

# Analisando os dados

mean(dados)
sd(dados)
median(dados)


# Calculando Coeficiente de Assimetria (Skewness)

library(moments)

sk = skewness(dados)

print(sk) # 0.2549279


# -> Sk ≈ 0: dados simétricos. Tanto a cauda do lado direito quanto a do lado esquerdo da função densidade de probabilidade
#            são iguais.

# -> Sk < 0: assimetria negativa. A cauda do lado esquerdo da função densidade de probabilidade é maior que a do lado direito.

# -> Sk > 0: assimetria positiva. A cauda do lado direito da função densidade de probabilidade é maior que a do lado esquerdo.


# - O valor do coeficiente de assimetria de 'dados' foi 0.2549279.
# - Como o coeficiente de assimetria ficou maior que 0, diz-se que a curva apresente assimetria positiva e a cauda do lado
#   direito da função densidade de probabilidade é maior que o lado esquerdo.
# - Ao observar também o histograma, percebe-se que há maior densidade de dados do lado direito.

# - Se tivessemos que usar algum modelo de machine learning, precisaríamos primeiro fazer tratamento dos dados, colocando
#   eles de forma que o histograma fique simétrico.


# Exemplo 2

set.seed(1234)

# criando dados

x = rnorm(1000)
x

# verificando coeficiente de assimetria

skewness(x)  # -0.005202026

# criando histograma

hist(x)


# Conclusão

# - o valor do coeficiente de assimetria de x foi de -0.005202026, logo os dados estão bastante próximos de 0, por isso é simétrico.
  
  
  
  