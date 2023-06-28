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

# - Este conceito pode ser estendido um pouco mais e em lugar de 25%, 50% e 75%, podemos querer calcular percentis (5%, 10%, 90%)



#####  Quartis  #####

# - Quartis são valores que dividem um conjunto de dados em quatro partes iguais.
# - O 1º quartil será o termo que terá 25% dos dados antes dele.
# - O 2º quartil também seguirá a mesma lógica e irá coincindir com a mediana.
# - O 3º quartil será o termo com 75% dos valores do conjunto de dados antes dele.
# - O 4º quartil será o último termo do conjunto com 100% dos dados antes dele.


# Exemplo: O horário de funcionamento de um banco já está se esgotando, para adiantar o atendimento dos clientes, a gerente
#          decide parar de chamar individualmente e passa a chamar em grupos de 1/4 da quantidade total de clientes da fila.
#          A partir dos números das fichas dos clientes, determine os grupos das 4 chamadas.

num_fichas = c(54, 55, 56, 57, 58, 59, 60, 61, 62, 63)

quantile(num_fichas)

# - Ou seja, a primeira chamada contemplará os clientes com as fichas 54 até 56, a segunda de 57 até 58,
#   a terceira de 59 até 60 e a quarta de 61 até 63.



#####  Percentis  #####

# - Os percentis são os valores que separam um conjunto de dados em 100 partes iguais.
# - O percentil 10 representa o décimo percentil e terá 10% dos dados antes dele, a lógica se seguirá para todo percentil.

num_fichas = c(54, 55, 56, 57, 58, 59, 60, 61, 62, 63)

quantile(num_fichas, c(.10))
quantile(num_fichas, c(.80))
quantile(num_fichas, c(.90))

# - Ou seja, o cliene que está com pouco mais do que 98% da fila a frente dele terá a ficha 63, o que está com pouco menos
#   de 80% da fila a frente dele terá a ficha 61 e o que está com pouco mais do que 10% terá a frente dele a ficha 55







