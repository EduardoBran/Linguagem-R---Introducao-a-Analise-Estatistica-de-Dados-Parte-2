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
# CK < 0: Cauda mais leve que a normal. Para um coeficiente de Curtose negativo, tem-se uma Curtose Platicúrtica.
# CK > 0: Cauda mais pesada que a normal. Para um coeficiente de Curtose positivo, tem-se uma Curtose Leptocúrtica.

# Conclusão: O valor foi de 2.37652, logo como o valor de CK é maior que 0, a curva é leptocúrtica.


