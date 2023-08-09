# Exemplos das Principais Distribuições de Probabilidade para Variáveis Aleatórias Discretas


# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()


### Distribuição Binomial x Poisson 


# - A escolha entre usar a Distribuição Binomial ou a Distribuição Poisson depende das características do problema em questão.
#   Aqui estão algumas diretrizes gerais:
  
#   Distribuição Binomial:

# - A Distribuição Binomial é adequada quando temos um número fixo de ensaios independentes e cada ensaio pode ter apenas dois resultados
#   possíveis: sucesso ou fracasso. Além disso, a probabilidade de sucesso (p) deve ser a mesma em todos os ensaios. Alguns exemplos de situações
#   em que a Distribuição Binomial é aplicável incluem:
  
# - Probabilidade de se ganhar em um jogo de azar.
# - Lançamento de uma moeda (cara ou coroa) várias vezes.
# - Sucesso ou fracasso em testes de produtos (aprovado/reprovado).



#   Distribuição Poisson:

# - A Distribuição Poisson é apropriada quando estamos interessados em contar o número de eventos que ocorrem em um intervalo de tempo ou espaço
#   contínuo, com base em uma taxa média conhecida. Ela é usada quando os eventos ocorrem de forma aleatória e independente e a taxa de ocorrência é relativamente baixa. Exemplos de situações em que a Distribuição Poisson é aplicável incluem:
  
# - Número de chamadas telefônicas recebidas por um call center em um determinado intervalo de tempo.
# - Número de acidentes de trânsito em um cruzamento durante um certo período.
# - Número de defeitos em um rolo de filme.



# - Em resumo, a Distribuição Binomial é usada para contagem de sucessos em um número fixo de ensaios independentes com resultados binários,
#   enquanto a Distribuição Poisson é usada para contar o número de ocorrências de um evento em um intervalo contínuo com base em uma taxa 
#   média conhecida.




# Exemplo Distribuição Binomial:

# - Ex1: Suponha que você está jogando um jogo de azar onde a probabilidade de ganhar é de 0,3. Você joga o jogo 10 vezes.
#        Qual é a probabilidade de ganhar 1 vez? E exatamente 3 vezes?

probabilidade_1x <- dbinom(1, size = 10, prob = 0.3)
probabilidade_1x
probabilidade_3x <- dbinom(3, size = 10, prob = 0.3)
probabilidade_3x

# - A probabilidade para ganhar exatamente 1 vez é de 12.11%.
# - A probabilidade para ganhar exatamente 3 vezes é de 26.68%.



# - Ex2: Suponha que você esteja lançando uma moeda honesta 10 vezes. Qual é a probabilidade de obter exatamente 4 caras?

probabilidade <- dbinom(4, size = 10, prob = 0.5)
probabilidade

# - A probabilidade para obter 4 caras é de 20.51%

graph <- function(n, p){
  x <- dbinom(0:n, size = n, prob = p)
  barplot(x, ylim = c(0, 1),
          names.arg = 0:n,
          main = sprintf("Distribuição Binomial (n, p) %d, %.2f", n, p))
  
  # Calcula os rótulos correspondentes com base nos valores de entrada
  y_labels <- seq(0, 1, by = 0.2)
  
  # Remove a informação original do eixo y
  axis(2, labels = FALSE)
  
  # Adiciona os novos rótulos do eixo y com formatação em porcentagem
  axis(2, at = y_labels, labels = paste0(y_labels * 100, "%"), las = 1)
}

# Exemplo de uso:
graph(4, 0.5)

# - O gráfico resultante mostrará a probabilidade de se obter cara em 0, 1, 2, 3, 4 ou 5x ao lançar a moeda honesta.



# - Ex3: Suponha que você está testando um produto e a taxa de aprovação é de 0.85 (ou seja, 85% de chance de aprovação) e você deseja
#        calcular a probabilidade de obter exatamente 4 produtos aprovados em um teste de 6 produtos.

prob <- dbinom(4, size = 6, prob = 0.85)
prob

# - A probabilidade de obter 4 produtos aprovatos em um teste de 6 produtos é de 17.62%.




# Exemplo Distribuição Poisson:

# Ex1: Suponha que, em média, um call center receba 5 chamadas telefônicas por minuto. Qual é a probabilidade de receber exatamente
#      3 chamadas telefônicas em um intervalo de 1 minuto? E em 2 minutos ?

prob_1min <- dpois(3, lambda = 5)
prob_1min

prob_3min <- dpois(3, lambda = 5 * 2)
prob_3min

# -> 3 é o número de ocorrências que estamos interessados (neste caso, exatamente 3 chamadas telefônicas).
# -> lambda é a taxa média de ocorrências por intervalo (neste caso, 5 chamadas por minuto multiplicado por 3 minutos).

# - A probabilidade é de 14.04% para um intervalo de 1min.
# - A probabilidade é de 0.07% para um intervalo de 2min.


# Ex2: Suponha que, em média, ocorram 2 acidentes de trânsito por dia em um cruzamento. Qual é a probabilidade de ocorrerem
#      exatamente 4 acidentes em um dia?

prob_4_ac <- dpois(4, lambda = 2)
prob_4_ac

# - A probabilidade é de 9.02% de ocorrerem exatamente 4 acidentes em um dia.







