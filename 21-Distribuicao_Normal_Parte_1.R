# Distribuição Normal (Parte 1)


# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



# - Uma variável randômica contínua que segue uma Distribuição de Probabilidade Normal tem uma série de características distintas.

# - E a melhor forma de explicar essas características é com um exemplo. 
#   Para este exemplo teremos um cenário e utilizaremos este cenário para compreender a Distribuição Normal e suas características.



# Exemplo 1: Imagine que o número de minutos que um cliente passa ao telefone com o pessoal de suporte da companhia de TV a cabo, segue uma
#            distribuição normal, com uma média de 12 minutos e um desvio padrão de 2 minutos.

set.seed(123)

# Gerar dados com uma distribuição normal com média 12 e desvio padrão 2 / Dados aleatórios
dados <- round(rnorm(1000, mean = 12, sd = 2), 2)
dados2 <- round(rnorm(1000, mean = 12, sd = 3), 2)
dados3 <- round(rnorm(1000, mean = 21, sd = 2), 2)

dados_df <- data.frame(Cliente = 1:1000, Minutos = dados)
dados_df2 <- data.frame(Cliente = 1:1000, Minutos = dados2)
dados_df3 <- data.frame(Cliente = 1:1000, Minutos = dados3)
View(dados_df3)

mean(dados_df$Minutos)
sd(dados_df$Minutos)   # desvio padrão é a variabilidade dos valores.


## Observações do gráfico de densidade com desvio padrão de 2

library(ggplot2)
ggplot(dados_df, aes(x = Minutos)) +
  geom_density(fill = "blue", alpha = 0.7) +
  scale_x_continuous(breaks = seq(0, 30, by = 3)) +
  labs(title = "Distribuição de Probabilidade - Gráfico de Densidade",
       x = "Minutos",
       y = "Densidade")

# - A distribuição tem um formato de sino e simétrico em torno da média
# - Como o formato da distribuição é simétrico, a média e a mediana possuem o mesmo valor, neste caso, 12 minutos.
# - Variáveis randômicas em torno da média, na parte mais alta da curva, tem maior probabilidade de ocorrer que valores situados
#   onde a curva é menor.
# - A parte final da curva, tanto do lado direito, quanto do lado esquerdo, em uma distribuição normal, se estende indefinidamente,
#   nunca tocando o eixo x do gráfico.



## Observações do gráfico de densidade com desvio padrão de 2 e 3

ggplot() +
  geom_density(data = dados_df, aes(x = Minutos), fill = "blue", alpha = 0.7) +
  geom_density(data = dados_df2, aes(x = Minutos), fill = "red", alpha = 0.7) +
  scale_x_continuous(breaks = seq(0, 30, by = 3)) +
  labs(title = "Distribuição de Probabilidade - Gráfico de Densidade",
       x = "Minutos",
       y = "Densidade")

# - A linha vermelha possui um desvio padrão de 3
# - A curva ficou mais aberta em relação à média.
# - O tempo médio das ligações está entre 2.20 e 23 minutos e não mais entre 5.70 e 18, quando o desvio padrão é 2.
# - Um desvio padrão menor resulta em uma curva mais estreita.
# - Um desvio padrão maior, faz com que a curva seja mais baixo e mais aberta.





# - E se mudar a média de 12 para 21 minutos a manter o desvio padrão de 2 ?


## Observações do gráfico de densidade com média de 12 e 21 e desvio padrão de 2 

ggplot() +
  geom_density(data = dados_df, aes(x = Minutos), fill = "blue", alpha = 0.7) +
  geom_density(data = dados_df3, aes(x = Minutos), fill = "red", alpha = 0.7) +
  scale_x_continuous(breaks = seq(0, 30, by = 3)) +
  labs(title = "Distribuição de Probabilidade - Gráfico de Densidade",
       x = "Minutos",
       y = "Densidade")

# - Em cada um dos gráficos apresentados (azul, vermelho), as características de uma Distribuição de Probabilidade Normal são mantidas.




# - As probabilidades de distribuições normais podem ser calculadas através do uso de fórmulas, tabelas de probabilidade e softwares
#   estatísticos como R, SAS e SPSS ou mesmo pacotes estatísticos para a linguagem Python





















# Criar um histograma dos dados
ggplot(dados_df, aes(x = Minutos)) +
  geom_histogram(binwidth = 0.5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribuição de Probabilidade",
       x = "Minutos",
       y = "Frequência")

