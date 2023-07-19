# Variáveis Aleatórias Discretas e Contínuas


# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()

library(dplyr)


##### Definindo os Conceitos de Variáveis Aleatórias Discretas e Contínuas


## Variáveis Discretas

# - Vamos observar os seguintes experimentos:

#  -> Registrar o número de clientes que fazem contato telefônico com a central de suporte de um banco.
#  -> Randomicamente selecionar 6 clientes que entram em uma loja de celulares e contar quantos assinam um plano pós-pago.
#  -> Solicitar que cada cliente que deixa um hotel, avalie seu grau de satisfação com o serviço prestado.

# - Qual tipo de variável aleatória usaríamos para descrever os experimentos acima ?

# - Cada um destes experimentos, vai gerar dados com variáveis aleatórias discretas.

# - Variáveis Discretas são, portanto, números inteiros, gerados a partir de resultados de experimentos.
#   Normalmente usamos variável discreta quando nós podemos contar o resultado do experimento, como por exemplo o nº de pessoas que
#   entraram em uma loja ou nº de pessoas que avaliaram o serviço prestado de um hotel.



# - Mas no mundo dos negócios normalmente nos deparamos com problemas que requerem medição e cujos valores podem assumir qualquer número
#   em um intervalo.



## Variáveis Contínuas

# - Vamos observar os seguintes experimentos:

#  -> Tempo de duração de voo entre Natal e Maceió
#  -> Tempo gasto por um cliente ao telefone, com uma companhia de TV a cabo.
#  -> Peso das caixas de biscoito em uma fábrica de alimentos.

# - Qual tipo de variável aleatória usaríamos para descrever os experimentos acima ?

# - Cada um destes experimentos, vai gerar dados com variáveis aleatórias contínuas.

# - Variáveis Contínuas normalmente são medidos e não contados, como no caso dos valores discretos e são, portanto, qualquer valor no
#   conjunto de números reais, ou um subconjunto deles.
#   Como por exemplo o tempo de duração de um voo que pode ter 1h ou 1h e 15min, ou seja, não temos mais uma contagem e sim medição.


 
# - Mas tenha em mente, que se optarmos por contar os voos que chegam atrasados ao seu destino, podemos usar Variável (Distribuição) Discreta.
#   Por outro lado, se estamos medindo o tempo de voo, estamos na verdade medindo o intervalo de possibilidades (o voo pode durar entre 1
#   e 2hs por exemplo, sendo qualquer valor neste intervalo).


# - É importante compreender que a distinção entre variáveis discretas e contínuas é uma forma de categorizar e compreender os diferentes tipos
#   de fenômenos e suas características. Essa distinção nos permite escolher as ferramentas e métodos adequados para analisar e interpretar os
#   dados coletados.




