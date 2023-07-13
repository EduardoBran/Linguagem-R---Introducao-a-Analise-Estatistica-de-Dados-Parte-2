#  Conceito Probabilidade

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



# - Primeiramente vamos perguntar: Probabilidade e Possibilidade são a mesma coisa ?
# - Não!



# - Probabilidade é a medida da possibilidade de um evento ocorrer.
# - Em outras palavras, se a chance de chover amanhã é de 40%, há menos possibilidades que chova amanhã, do que não chova.




# - A Probabilidade pode ser dividida em alguns tipos:




#########   Probabilidade Classíca   #########   


# - É usada quando nós sabemos o número de possíveis resultados do evento de interesse e podemos calcular a probabilidade 
#   do evento com a seguinte fórmula:


# P(A) = Número de possíveis resultados do evento A / número total de possíveis resultados dentro do espaço de amostra

# - Onde: P(A) é a probabilidade de um evento ocorrer.


# - Simplicando a fórmula:

# P(A) = s / n

# - Onde: s = nº de possiveis resultados e n = nº de resultados possiveis dentro do espaço da amostra.




# Exemplo 1: Um dado possui um espaço de amotra igual a {1, 2, 3, 4, 5, 6}, com 6 possíveis resultados.
#            Qual seria a probabilidade de, ao jogarmos o dado, conseguirmos que o número 5 seja a face em evidência ?

# - Nesse caso, o número de casos favoráveis é 1, pois há apenas uma face do dado com o número 5. O número total de casos possíveis é 6,
#   pois o dado possui 6 faces.


# P(A) = 1 / 6 = 0.167

# Ou seja, 16.17% de probabilidade de jogarmos um dado e conseguirmos a face com o número 5.




# Exemplo 2: Qual a probabilidade de se obter um 3 ou 4 em uma jogada de um dado equilibrado ?

# - Nesse caso, o número de de possibilidades é 2 ("obter 3 ou 4"), logo o valor de s = 2. O número total de casos possíveis é 6,
#   pois o dado possui 6 faces.


# P(A) = 2 / 6 = 0.33

# Ou seja, 33.33% de probilidade de se obter um 3 ou 4 em uma jogada de um dado equilibrado.




# Exemplo 3: Uma urna contém 8 bolas, numeradas de 1 a 8. Qual é a probabilidade de retirar uma bola com um número par?

# - Nº de possíveis resultados: 4 {2, 4, 6, 8}
# - Nº total de resultados possíveis: 8


# P(A) = 4 / 8 = 0.5

# Ou seja, 50% de probilidade.




# Exemplo 4: Uma moeda justa é lançada. Qual é a probabilidade de obter "cara"?

# - Nº de possíveis resultados: 1 {cara}
# - Nº total de resultados possíveis: 2


# P(A) = 1 / 2 = 0.5

# Ou seja, 50% de probilidade.




# Exemplo 5: Um baralho padrão contém 52 cartas. Qual é a probabilidade de tirar um ás?

# - Nº de possíveis resultados: 4 {as ouro, as copas, as espada, as paus}
# - Nº total de resultados possíveis: 52

# P(A) = 4 / 52 = 0.076

print(0.076*100)

# Ou seja, 7.6% de probilidade.





# - Quando sabemos os possíveis resultados de um evento, utilizamos a Probabilidade Clássica. 





#########   Probabilidade Empírica   #########   


# - Quando não sabemos os possíveis resultados de um evento, utilizamos a Probabilidade Empírica.

# - Para calcularmos a probabilidade empírica, usamos a fórmula:


# P(A) = Frequência em que o vento A ocorre / número total de observações


# onde P(A) é a probabilidade de um evento ocorrer.


# Exemplo 1: Experimento da Loja de Livros:
#            Qual a probabilidade de que uma pessoa que entre na loja faça uma compra ?

# - A probabilidade clássica não poderia nos audar aqui, pois não temos informações sobre porque as pessoas fazem uma compra e nem
#   quando elas fazem uma compra. Usamos então a probabilidade empírica para contar quantas pessoas que entram na loja finalizam uma compra.

# Resposta: Supondo que 100 pessoas entraram na loja e que 15 fizeram uma compra, a probabilidade empírica seria dada pela seguinte fórmula:


# P(A) = 15 / 100 = 0.15

# Ou seja, 15%.




# Exemplo 2: Em uma escola, registramos o número de alunos que tiraram uma nota acima de 8 em uma prova. Dos 200 alunos que fizeram a
#           prova, 50 deles obtiveram uma nota acima de 8. Qual é a probabilidade empírica de um aluno tirar uma nota acima de 8 nessa prova?


# P(A) = 50 / 200 = 0.25

# Ou seja, 25%.




# Exemplo 3: Em um evento esportivo, registramos o número de vezes em que o time A venceu em uma temporada. Dos 30 jogos que o time A
#            disputou, venceu em 15 deles. Qual é a probabilidade empírica de o time A vencer em um jogo?


# P(A) = 15 /30 = 0.50

# Ou seja, 50%.




# Exemplo 4: Em um experimento de laboratório, registramos o número de vezes que um determinado reagente químico apresentou uma reação
#            positiva. Realizamos o experimento 100 vezes e obtivemos 75 reações positivas. Qual é a probabilidade empírica de obter uma
#            reação positiva com esse reagente?


# P(A) = 75 / 100 = 0.75

# Ou seja, 75%.







#########   Probabilidade Subjetiva   ######### 


# - Usamos Probabilidade Subjetiva quando:

#   -> Probabilidades clássicas ou empíricas não podem ser usadas.
#   -> Dados ou experimentos não estão disponíveis para calcular a probabilidade.
#   -> Neste caso, confiamos na experiência ou julgamento para estimar as probabilidades.


# Exemplo: Diretor de Marketing:
#          Um experiente Diretor de Marketing estima que há 50% de probabilidade de que o maior concorrente da empresa reduza seus
#          preços no mês seguinte.







