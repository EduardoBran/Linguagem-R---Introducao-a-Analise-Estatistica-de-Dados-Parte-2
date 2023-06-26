# Medidas de Tendência Central - Média e Mediana

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



#####  Medidas de Tendência Central  #####


# - As medidas de tendência central são valores representativos da distribuição em torno da qual as outras medidas
#   se distribuem.

# - As duas medidas principais e mais utilizadas são: a média aritmética e a mediana.



#####  Média  #####


# - A média aritmética de um conjutno de n valores, como o próprio nome indica, é obtida somando-se todas as medidas
#   e dividindo-se a soma por n.

# - Representamos cada valor individual por uma letra (x, y, z, etc.) seguida por um sub-índice, ou seja, representamos
#   os n valores da amostra por x1, x2, x3, ..., xn, onde x1 é a primeira observação, x2 é a segundo e assim por diante.


# Exemplo: a lista abaixo possui as notas de 10 alunos de curso de graduação no exame final. Calcule a média.

notas = c(6.4, 7.3, 9.8, 7.3, 7.9, 8.2, 9.1, 5.6, 8.5, 6.8) 
notas

mean(notas)
print(mean(notas))



#####  Mediana  #####

# - A mediana é uma medida alternativa à média aritmética para representar o centro da distribuição, e é muito usada
#   em estatística decritiva.

# - A mediana de um conjunto de medidas (x1, x2, x3, ..., xn) é um valor M tal que pelo menos 50% das medidas são menores
#   ou iguais a M e pelo menos 50% das medidas são maiores ou iguais a M.

# - Em outras palavras, 50% das medidas ficam abaixo da mediana e 50% acima.

# - Se o número de elementos for ímpar, a mediana é o elemento do meio: n / 2
# - Se o número de elementos for par,   a mediana ainda é o elemento do meio, mas calculando assim: (n + 1) / 2


# Exemplo: os dados da lista abaixo são tempos de vida (em dias) de 8 lâmpadas. Calcule a média e a mediana.

tempo_lampadas <- c(400, 350, 510, 550, 690, 720, 750, 2000)
tempo_lampadas

mean(tempo_lampadas)
median(tempo_lampadas)  # 620


# - O valor da mediana (valor do meio) não precisa está necessariamente na lista, ele é o valor do meio que divide a lista
#   em duas partes.
# - Isso significa que metade dos valores de tempo_lampadas está abaixo ou igual a 620 e a outra metade
#   está acima ou igual a 620.

