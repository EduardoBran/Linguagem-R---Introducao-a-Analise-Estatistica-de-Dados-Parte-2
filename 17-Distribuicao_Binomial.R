# Exemplos das Principais Distribuições de Probabilidade para Variáveis Aleatórias Discretas


# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()


### Distribuição Binomial


# - Uma variável aleatória tem Distribuição Binomial quando o experimento ao qual está relacionada apresenta
#   apenas 2 resultados: sucesso e fracasso.


# - Vamos imaginar que nosso experimento seja contar quantos clientes que entram em uma loja de celulares adquirem um plano pós-pago.

# - Para este experimento, temos 2 possibilidades para cada observação: adquirir ou não o plano.

# - E como podemos ter apenas 2 resultados possíves, este é chamado um Experimento Binomial.


# - Vamos imaginar agora, que historicamente, 10% dos clientes que entram na loja, adquirem um plano pós-pago. Portanto, a probabilidade
#   de sucesso (que vamos chamar de p) para cada observação é 0.10.
# - E a probabilidade de falha (que vamos chamar de q) para cada observação é 0.90.

# - Ou seja: p = 1 - q

# p = probabilidade de sucesso
# q = probabilidade de fracasso


# - A palavra sucesso não tem relação com resultado positivo do experimento, assim como a palavra fracasso não tem conotação negativa.


# - Outra característica da distribuição binomial, é que cada observação é independente das outras.

# - Dessa forma, um Experimento Binomial consiste de um número fixo de observações, indicado por n e contamos o nº de sucessos, indicado por x.


# - A Média de uma Distribuição Binomial, representa a média de longo prazo de sucessos esperados, baseado no nº de observações.


# - A Variância de uma Distribuição Binomial, representa a variação que existe no nº de sucessos (p) sobre um nº (n) de observações.




# Exemplo: A probabilidade de um paciente com um ataque cardíaco morrer do ataque é de 0.04 (ou seja, 4 de 100 morrem do ataque).
#          Suponha que tenhamos 5 pacientes que sofrem um ataque cardíaco, qual é a probabilidade de que todos sobrevivam ?

# - Para este exemplo, vamos chamar de sucesso um ataque fatal (p = 0.04).
#   Temos n = 5 pacientes e queremos saber a probabilidade de que todos sobrevivam, ou em outras palavras, que nenhum seja fatal (0 sucessos).


# X = Número de sobreviventes ao ataque
# p = 0.04
# n = 5
# dbinom(X, n, p)

a <- dbinom(0, 5, 0.04)
a                        # 0.8153727


# Portanto, a probabilidade de que todos os 5 pacientes sobrevivam ao ataque cardíaco é aproximadamente 0.8154 ou 81.54%. Isso significa que
# há uma alta probabilidade de que nenhum paciente tenha um ataque fatal nesse grupo de 5 pacientes.



# Desenhando a distribuição de probabilidades

graph <- function(n, p){
  x <- dbinom(0:n, size = n, prob = p)
  barplot(x, ylim = c(0, 1),
          names.arg = 0:n,
          main = sprintf(paste("Distribuição Binomial (n, p)", n, p, sep = ', ')))
}
graph(5, 0.04)

# - O gráfico resultante mostrará a probabilidade de que 0, 1, 2, 3, 4 ou 5 pacientes sobrevivam ao ataque cardíaco, com a maior
#   probabilidade ocorrendo em 5 pacientes sobreviventes, seguida por 4, 3, 2, 1 e 0 pacientes, respectivamente.




# Criando o gráfico de uma distribuição binomial

x <- seq(0, 50, by = 1)
x
y <- dbinom(x, 50, 0.5)
y

png(file = "dbinom.png")
plot(x,y)
dev.off()

# - cria um gráfico da distribuição binomial com 50 tentativas (n = 50) e uma probabilidade de sucesso de 0.5 (p = 0.5), ou seja,
#   um experimento com resultados binários igualmente prováveis (por exemplo, lançamento de uma moeda justa).


