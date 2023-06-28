# Quartil e Percentil 

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()


##### O que são os Quartis e Percentis? #####

# - Se o número de observações é grande, é interessante calcular algumas outras medidas de posição. 
# - Essas medidas são uma extensão do conceito de mediana.

# - Suponha que estamos conduzindo um experimento com animais. Eles recebem uma droga e medimos o tempo de vida (em dias)
#   após a ingestão dessa droga. Poderíamos fazer a seguinte pergunta:

# - Qual é o tempo em que 50% dos animais ainda estão vivos? Obviamente esse valor será a mediana.

# - E se agora estivessemos interessados em sabquer qual é o tempo em que 75% dos animais estão vivos? Ou 25% ?

# - Esses valores são chamados de Quartis de distribuição (dividem a distribuição em quartas partes) e são representados
#   por Q1 (1º Quartil - 25%) e Q3 (3º Quartil - 75%). O Q2 (2º Quartil - 50%) é a mediana.

# - Este conceito pode ser estendido um pouco mais, e em lugar de 25%, 50% e 75%, podemos querer calcular
#   percentis (5%, 10%, 90%)


