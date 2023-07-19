#  Conceito Probabilidade

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()

library(dplyr)



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






#########   5 Regras Básicas que Regem a Teoria da Probabilidade ######### 


# 1ª regra - Se P(A) = 1, então podemos garantir que o evento A ocorrerá.

# 2ª regra - Se P(A) = 0, então podemos garantir que o evento A NÃO ocorrerá.

# 3ª regra - A probabilidade de qualquer evento sempre será entre 0 e 1. Probabilidades nunca podem ser negativas ou maior que 1.

# 4ª regra - A soma de todas as probabilidades para um evento simples, em um espaço de amostra, será igual a 1.
#            Em outras palavras, a probabilidade de que algo aconteça é certa (1), pois um dos eventos dentro do espaço de amostra ocorrerá 
#            obrigatoriamente. Por exemplo, se tivermos um dado justo de seis lados, o espaço de amostra é {1, 2, 3, 4, 5, 6}, e a probabilidade
#            de rolar qualquer um desses números é igual a 1/6. Somando todas as probabilidades, obtemos 1.

# 5ª regra - O complemento do evento A é definido como todos os resultados em um espaço de amostra, que não fazem parte do evento A.
#            Por exemplo, se a probabilidade de chover em um determinado dia for de 0,3 (ou 30%), a probabilidade de não chover
#            (complemento de chover) será de 0,7 (ou 70%), pois a soma das duas probabilidades deve ser igual a 1.
#            Ou seja:

# P(A) = 1 - P(A´), onde P(A´) é o complemento do evento A.






# - As regras que estudamos acima para Probabilidade se referem a um único evento. Mas e se tivermos mais eventos?





#########   Regras Básicas da Probabilidade Para Mais de Um Evento ######### 


# - No mundo dos negócios, os eventos raramente são simples e frequentemente envolvem dois ou mais eventos.

# Exemplo: O gerente de um ganco, pode estar interessado em saber a probabilidade de um cliente com histórico de crédito ruim não pagar
#          o empréstimo de cheque especial.

# - Neste caso, temos 2 eventos:

#   -> Evento A - cliente não paga o cheque especial.
#   -> Evento B - cliente tem um histórico de crédito ruim.



# - Para trabalharmos com mais de um evento temos 3 regras principais:

#  -> Intersecção de Eventos
#  -> União de Eventos
#  -> Adição de Eventos




#######  Intersecção de Eventos 

# - A intersecção de eventos A e B representam o número de vezes que os eventos A e B ocorrem ao mesmo tempo.


# Vamos usar uma Tabela de Contingência para exemplificar melhor.
# A tabela a seguir mostra o número de alunos admitidos em cursos de graduação em Engenharia e Medicina em 3 cidades brasileiras:

#    Cidade         Engenharia         Medicina           Total

#     RJ               1500              2300              3800
#     SP               5600              7500             13100
#     MG                980              1400              2380
#    Total             8080             11200             19280


# Agora vamos definir os eventos da tabela acima em análise:

# -> Evento A - o estudante é da cidade de SP. 13100 (neste momento não nos preocupamos se foi aprovado em engenharia ou medicina)
# -> Evento B - o estudante foi admitido em curso de Medicina. 11200.


# Com base nos 2 eventos, vamos calcular a probabilidade do Evento A ocorrer:

#      P(A) = 13100 / 19280 = 0.68 x 100 = 68% (ou seja, 68% de termos um aluno da cidade SP aprovado)

# Com base nos 2 eventos, vamos calcular a probabilidade do Evento B ocorrer:

#      P(A) = 11200 / 19280 = 0.58 x 100 = 58% (ou seja, 58% do aluno ter sido admitido no curso de Medicina)


# - Até aqui aplicamos as regras de probabilidade de um evento simples (Evento A e Evento B são eventos simples)

# - Só que o que precisamos agora é uma última probabilidade que na verdade representa os Eventos A e B:

#   Qual a probabilidade de um Estudante de São Paulo, ser admitido em um curso de Medicina ?


#   Para isso calculamos a intersecção dos eventos A e B.

#   P(A) = 7500 / 19280 = 0.39 x 100 = 39%


df <- data.frame(cidade = c('RJ', 'SP', 'MG', 'Total'), engenharia = c(1500, 5600, 980, 8080),
                 medicina = c(2300, 7500, 1400, 11200), total = c(3800, 13100, 2380, 19280))

df_evento_a <- 
  df %>% 
  filter(cidade == 'SP') %>% 
  select(total)

probabilidade_a = df_evento_a / 19280  # 13100 / 19280  ou seja 67%

df_evento_b <- 
  df %>% 
  filter(cidade == "Total") %>% 
  select(medicina)

probabilidade_b = df_evento_b / 19280  # 11200 / 19280  ou seja 58%

df_evento_c <- 
  df %>% 
  filter(cidade == 'SP') %>% 
  select(medicina)

probabilidade_c = df_evento_c / 19280  # 7500 / 19280   ou seja 39%




#######  União de Eventos:

# - A união dos Eventos A e B representam o nº de vezes em que o evento A ou evento B ocorrem juntos.
#   (diferente da intersecção que é quando o evento ocorre ao mesmo tempo).


# Vamos usar uma Tabela de Contingência para exemplificar melhor.
# A tabela a seguir mostra o número de alunos admitidos em cursos de graduação em Engenharia e Medicina em 3 cidades brasileiras:

#    Cidade         Engenharia         Medicina           Total

#     RJ               1500              2300              3800
#     SP               5600              7500             13100
#     MG                980              1400              2380
#    Total             8080             11200             19280


# Agora vamos definir os eventos da tabela acima em análise:

# -> Evento A - estudante do RJ admitido em curso de Engenharia ou Medicina
# -> Evento B - estudante de qualquer cidade admitido em Engenharia.

# - Como estamos considerando uma união dos eventos, tanto um como outro pode ocorrer.


# Calculando evento A:     1500 + 2300    = 3800

# Calculando evento B:  1500 + 5600 + 980 = 8080


# Com base nisso, a soma dos eventos A e B é 3800 + 8080 = 11880


# A probabilidade do evento A ou B ocorrer é:

# P(A ou B) = 11880 / 19280 = 0.62 x 100 = 62%




#### Adição de Eventos:

# - A Regra de Adição em probabilidade é usada para calcular a probabilidade de união de eventos, ou seja, a probabilidade
#   do Evento A mais Evento B ocorrerem.


# - Antes, precisamos entender dois conceitos muito importantes:

#  -> Eventos Mutuamente Exclusivos:      são aqueles que NÃO podem ocorrer ao mesmo tempo durante um experimento.
# A fórmula é: P(A ou B) = P(A) + P(B).

#  -> Eventos Não Mutuamente Exclusivos:  são aqueles que podem ocorrer ao mesmo tempo durante um experimento.
# A fórmula é: P(A ou B) = P(A) + P(B) - P(A e B).


# - A Regra da Adição depende se 2 eventos são ou não mutuamente exclusivos.


# Exemplo: Evento Mutuamente Exclusivo

#    Nota final         Homens           Mulheres           Total

#       95                60                30               90
#       90                40                80              120
#       85                 0                40               40
#      Total             100               150              250


df <- data.frame(nota_final = c(95, 90, 85, 'Total'), homens = c(60, 40, 0, 100),
                 mulheres = c(30, 80, 40, 150), total = c(90, 120, 40, 250))
View(df)


# Agora vamos definir os eventos da tabela acima em análise:

# -> Evento A - estudante com nota final igual a 90.
# -> Evento B - estudante com nota final igual a 85.

# - Agora devemos definir qual regra da adição utilizar.
# - Observando os eventos, constatamos que são Mutamente Exclusivos, pois um estudante NÃO pode obter notas 90 e 85 no mesmo exame.
#   Com isso utilizamos a fórmula de eventos mutuamente exclusivos

# Calculando evento A:  P(A) = 120 / 250 = 0.48 x 100 = 48%

# Calculando evento B:  P(B) =   40 / 250 = 0.16 x 100 = 16%

# Aplicando a regra temos:  P(A ou B) = P(A) + P(B) = 0.48 + 0.16 = 0.64 x 100 = 64%

# Ou seja, 64% de probabilidade de um estudante ter a nota final igual a 85 ou 90.



# Exemplo: Evento Não Mutuamente Exclusivo

#    Nota final         Homens           Mulheres           Total

#       95                60                30               90
#       90                40                80              120
#       85                 0                40               40
#      Total             100               150              250


df <- data.frame(nota_final = c(95, 90, 85, 'Total'), homens = c(60, 40, 0, 100),
                 mulheres = c(30, 80, 40, 150), total = c(90, 120, 40, 250))
View(df)


# Agora vamos definir os eventos da tabela acima em análise:

# -> Evento A - estudante com nota final igual a 90.
# -> Evento B - estudante é do sexo feminino.

# - Agora devemos definir qual regra da adição utilizar.
# - Observando os eventos, constatamos que são Não Mutamente Exclusivos, pois um estudante pode obter nota 90 e ser do sexo feminino.


# Calculando evento A:              P(A) = 120 / 250 = 0.48 x 100 = 48%

# Calculando evento B:              P(B) = 150 / 250 = 0.60 x 100 = 60%

# Calculando Intersecção de A e B:  P(A e B) = 80 / 250 = 0.32 x 100 = 32%


# Aplicando a regra temos:  P(A ou B) = P(A) + P(B) - P(A e B) = 0.48 + 0.60 - 0.32 = 0.76 x 100 = 76%

# Ou seja, 76% de probabilidade de uma estudante do sexo feminino obter 90 como nota final.



# Exemplo 2

df <- data.frame(eventoA = c("Tirar um ás", "Tirar uma carta vermelha", "Tirar um número par", "Tirar um número primo"),
                 eventoB = c("Tirar um rei", "Tirar uma carta preta", "Tirar um número ímpar", "Tirar um número composto"),
                 eventoC = c("Tirar uma carta de copas", "Tirar uma carta de paus", "Tirar um número múltiplo de 3", "Tirar um número positivo"))


# Exercício 1 - Eventos Mutuamente Exclusivos:
#               Suponha que temos os eventos A e B, onde A representa tirar um ás e B representa tirar um rei de um baralho. Usando o dataframe 
#               criado, calcule a probabilidade de ocorrer o evento A ou o evento B.

# -> Evento A - evento A representa tirar um ás de um baralho
# -> Evento B - evento B representa tirar um rei de um baralho


# Calculando Evento A:    P(A) = 1 / 4 = 0.25
# Calculando Evento B:    P(A) = 1 / 4 = 0.25

# Aplicando a regra temos:  P(A ou B) = P(A) + P(B) = 0.25 + 0.25 = 0.50 x 100 = 50%

# Ou seja, 50% de probabilidade de ocorrer o evento A ou o evento B.



# Exercício 2 - Eventos Não Mutuamente Exclusivos:
#               Suponha que temos os eventos A e C, onde A representa tirar um ás de um baralho e C representa tirar uma carta de copas.
#               Usando o dataframe criado, calcule a probabilidade de ocorrer o evento A ou o evento C.


# Calculando Evento A:              P(A) = 1 / 4 = 0.25
# Calculando Evento B:              P(A) = 1 / 4 = 0.25
# Calculando Intersecção de A e B:  P(A e B) = 2 / 4 = 0.50 x 100 = 50%

# Aplicando a regra temos:  P(A ou B) = P(A) + P(B) - P(A e B) = 1 + 1 - 2 = 0 x 100 = 0%

# Ou seja, 0% de probabilidade de t

















summary(df)

# Exemplo de DataFrame
df <- data.frame(coluna1 = c("A", "B", "C", "A", "B"),
                 coluna2 = c(1, 2, 3, 4, 5),
                 coluna3 = c(TRUE, FALSE, TRUE, TRUE, FALSE))

# Função para contar o número de tipos em cada coluna
contar_tipos <- function(coluna) {
  length(unique(coluna))
}

# Aplicar a função contar_tipos a cada coluna do DataFrame
num_tipos_por_coluna <- sapply(df, contar_tipos)

# Exibir o resultado
print(num_tipos_por_coluna)
