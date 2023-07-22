# Tipos de Distribuição de Probabilidade


# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



# - Em estatística, uma Distribuição de Probabilidade descreve a chance que uma variável pode assumir ao longo de um espaço de valores.

# - A Distribuição de Probabilidades tem por objetivo associar uma probabilidade a cada resultado numérico de um experimento.  

# - Ou seja, é mais ou menos como se realizassemos o mesmo experimento muitas e muitas vezes e assim obter todas as possíveis probabilidades
#   e assim criar uma Distribuição de modo que na hora de se perguntar "qual a probabilidade da variável de valor X?", assim nós vamos até a
#   distribuição e buscamos esse valor.


# - Ela é uma função cujo domínio são os valores da variável e cuja imagem são as probabilidades de a variável assumir cada valor do domínio.
#   O conjunto imagem deste tipo de função está sempre restrito ao intervalo entre 0 e 1.


# - A soma de todos os valores de uma Distribuição de Probabilidades deve ser igual a 1.
# - A Probabilidade Ocorrência de um evento deve ser maior que 0 e menor do que 1.


# - Uma distribuição de probabilidades pode ser Discreta, Contínua ou Normal.

#  -> Discreta: descreve quantidades aleatórias de dados que podem assumir valores finitos.
#     Principais tipos: Binomial, Poisson, Hipergeométrica, Bernoulli

#  -> Contínua: descreve quantidades aleatórias de dados que podem assumir valores infinitos.
#     Principais tipos: Uniforme, Exponencial, Gama, Chi-Quadrado

#  -> Normal: uma variável randômica contínua que segue uma Distribuição de Probabilidade Normal tem uma série de características distintas.

# - Varios algoritmos de aprendizado de máquinas esperam que os dados estejam em um formato de Distribuição Normal, se não tiverem é trabalho
#   do Cientista de Dados aplicar normalização (deixar os dados em um formato normal).


## Conceito sobre Função, Imagem e Domínio da Teoria dos Conjuntos

# Na teoria dos conjuntos, uma função é uma regra que associa cada elemento de um conjunto (chamado domínio) a um único elemento de outro 
# conjunto (chamado contradomínio ou conjunto imagem). Em outras palavras, uma função estabelece uma correspondência entre elementos de dois
# conjuntos de forma que cada elemento do domínio seja relacionado a apenas um elemento do contradomínio.

# O domínio de uma função é o conjunto de todos os elementos de partida ou entrada da função, ou seja, são os valores para os quais a função
# está definida e pode ser aplicada. Já a imagem da função é o conjunto de todos os elementos de chegada ou saída da função, ou seja, são os
# valores que a função pode assumir após aplicar a regra de associação.

# Quando uma função é aplicada a um elemento específico do domínio, ela produz um único elemento no conjunto imagem correspondente. Essa relação
# unívoca é uma das características fundamentais das funções. No entanto, nem todos os elementos do contradomínio podem ser atingidos pela função,
# e a imagem é um subconjunto do contradomínio.

# Em resumo, uma função é uma correspondência entre dois conjuntos que associa cada elemento do domínio a um único elemento do conjunto imagem,
# e o domínio é o conjunto de entrada da função, enquanto a imagem é o conjunto de saída.




