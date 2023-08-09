# Distribuição Normal (Parte 2)


# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



# - A Distribuição Normal, ou Gaussiana, é a mais importante distribuição contínua.
# - Isso por conta de vários fatores, entre eles, o teorema central do limite, o qual é um resultado essencial em aplicações práticas e
#   teóricas, pois garante que, mesmo que os dados não sejam distribuídos segundo uma normal, a média dos dados converge para uma
#   distribuição normal conforme o número de dados aumenta.


# - o R inclui funcionalidades para operações com distribuições de probabilidades.
# - Para cada distribuição há 4 operações básicas indicadas pelas letras:

#  -> d: calcula a densidade de probabilidade f(x) no ponto.
#  -> p: calcula a função de probabilidade acumulada F(x)no ponto.
#  -> q: calcula o quantil correspondente a uma dada probabilidade.
#  -> r: retira uma amostra da distribuição.


# - Para utilizar as funções, combina-se uma das letras acima com uma abreviatura do nome da distribuição.
# - Por exemplo, para calcular probabilidades usamos: 'pnorm' para normal, 'pexp' para exponencial, 'pbinom' para binomial, 'ppois' para Poisson...


# x <- rnorm(n, mean, sd)

# - Onde n é o tamanho da amostra e mean e sd são parâmetros opcionais relacionados à média e desvio padrão, respectivamente.



## Distribuição Normal

x <- rnorm(100)
x
hist(x)



## Criar Gráfico Densidade

x <- seq(-6, 6, by = 0.01)   # Criando valores de -6 até 6 saltando em 0.01
x
y <- dnorm(x)                # Calcula os valores da função de densidade da Distribuição Normal para os valores de x criados.
y

plot(x, y, type = "l")

# - O gráfico gerado assemelha-se a uma Gaussiana e não apresneta assimetria.
# - Quando o gráfico da distribuição possui tal forma, há grandes chances de se tratar de uma Distribuição Normal.


