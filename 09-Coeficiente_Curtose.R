# Coeficiente de Curtose (Kurtosis) 

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



#####  Coeficiente de Curtose (Kurtosis)  #####

# - No Coeficiente de Assimetria, nós basicamente olhamos para lado esquerda e direita do nosso histograma e assim compreender como os dados
#   estão distribuídos.

# - Mas e se precisarmos olhar 'para cima e para baixo' em um histograma ? A curva estaria mais achatado ou alongado ?

# - Sendo assim, o Coeficiente de Curtose é uma medida que caracteriza o achatamento da curva da função de distribuição


# Exemplo: Os seguintes dados representam o número (colocados em ordem crescente) de acidentes diários em um complexo
#          industrial, durante o período de 50 dias. Represente o histograma desses dados.

dados = c(18, 20, 20, 21, 22, 24, 25, 25, 26, 27, 29, 29, 
          30, 30, 31, 31, 32, 33, 34, 35, 36, 36, 37, 37, 
          37, 37, 38, 38, 38, 40, 41, 43, 44, 44, 45, 45, 
          45, 46, 47, 48, 49, 50, 51, 53, 54, 54, 56, 58, 62, 65)

# Criação do histograma

hist(dados, main = "Número de Acidentes Diários", xlab = "Acidentes", ylab = "Frequência")

# Calculando Coeficiente de Curtose

library(moments)

ck = kurtosis(dados)

print(ck)           # 2.37652  


# CK ≈ 0: Distribuição normal. Chamada de Curtose Mesocúrtica.
# CK < 0: Cauda mais leve que a normal. Para um coeficiente de Curtose negativo, tem-se uma Curtose Platicúrtica. Curva achatada.
# CK > 0: Cauda mais pesada que a normal. Para um coeficiente de Curtose positivo, tem-se uma Curtose Leptocúrtica. Curva alongada.

# Conclusão: O valor foi de 2.37652, logo como o valor de CK é maior que 0, a curva é leptocúrtica.
#            Com isso podemos afirmar que como a a curva da distribuição dos dados é leptocúrtica, isto indica que ela é mais alongada e tem
#            caudas mais pesadas do que a curva de uma distribuição normal. Isso significa que há uma concentração maior de dados na região
#            central e uma maior probabilidade de ocorrência de valores extremos em comparação com uma distribuição normal.




# Outro exemplo:

dados2 <- rnorm(n = 10000, mean = 55, sd = 4.5)
dados2

# Skewness e Kurtosis

skewness(dados2)   # -0.0007068228
kurtosis(dados2)   # 3.049089


# - valor de skewnewss negativo significa que os dados de dados2 são assimétrico negativo. Significa um maior nº de ocorrências a esquerda.
#   Mas o valor está muito próximo de 0, então logo os dados a esquerda e direita são praticamente iguais.
# - valor de kurtosis positivo significa uma curva mais alongada.



# Criando histograma com ggplot

library(ggplot2)

df_dados2 <- data.frame(dados = dados2)

ggplot(df_dados2, aes(x = dados), binwith = 2) +
  geom_histogram(aes(y = ..density..), fill = 'red', alpha = 0.5) +
  geom_density(colour = 'blue') +
  xlab(expression(bold('Dados'))) + ylab(expression(bold('Densidade')))



# - ggplot(df_dados2, aes(x = dados), binwidth = 2): Cria um objeto ggplot que irá gerar o gráfico. O argumento df_dados2 representa o 
#   dataframe que contém os dados a serem plotados. O argumento aes(x = dados) mapeia a variável dados no eixo x do gráfico.
#   O binwidth = 2 define a largura dos intervalos de classe no histograma.

# - geom_histogram(aes(y = ..density..), fill = 'red', alpha = 0.5): Adiciona uma camada de histograma ao gráfico.
#   O argumento aes(y = ..density..) indica que a altura das barras do histograma será calculada em termos de densidade em vez de contagem
#   absoluta. O fill = 'red' define a cor de preenchimento das barras para vermelho e alpha = 0.5 define a transparência das barras como 50%.

# - geom_density(colour = 'blue'): Adiciona uma camada de densidade ao gráfico. Isso cria uma curva suave que representa a estimativa da
#   função de densidade dos dados. O colour = 'blue' define a cor da curva de densidade como azul.

# - xlab(expression(bold('Dados'))) + ylab(expression(bold('Densidade'))): Define os rótulos dos eixos x e y do gráfico. Aqui, os rótulos
#   são definidos como "Dados" para o eixo x e "Densidade" para o eixo y.












# -> Sk ≈ 0: dados simétricos. Tanto a cauda do lado direito quanto a do lado esquerdo da função densidade de probabilidade
#            são iguais.
# -> Sk < 0: assimetria negativa. A cauda do lado esquerdo da função densidade de probabilidade é maior que a do lado direito.
# -> Sk > 0: assimetria positiva. A cauda do lado direito da função densidade de probabilidade é maior que a do lado esquerdo.


