# Lista de Exercícios - CAP 09

library(dplyr)




# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()




# Exercício 1 - Gere 1000 números de uma distribuição normal com média 3 e sd = .25 e grave no objeto chamado x.
?rnorm

x <- rnorm(1000, mean = 3, sd = .25)
x






# Exercício 2 - Crie o histograma dos dados gerados no item anterior e adicione uma camada com a curva da normal.

hist(x, probability = TRUE)                                              # para curva tem que ter probability = TRUE
curve(dnorm(x, mean = mean(x), sd = sd(x)), add = TRUE, col = "blue")    # exibe a curva






# Exercício 3 - Suponha que 80% dos adultos com alergias relatem alívio sintomático com uma medicação específica. 
#               Se o medicamento é dado a 10 novos pacientes com alergias, qual é a probabilidade de que ele seja 
#               eficaz em exatamente sete? (Distribuição Binomial)

res <- dbinom(7, size = 10, prob = 0.80)
res

# - A probabilidade é de 20.13% de que seja eficaz em exatamente sete pacientes.

## função para gerar gráfico
graph <- function(n,p){
  
  x <- dbinom(0:n, size = n, prob = p)
  
  barplot(x, 
          ylim = c(0,0.4),names.arg=0:n,
          main = sprintf(paste('Binomial Distribution(n,p) ', n, p, sep=',')))
}

## chamando gráfico
graph(10, 0.8)






# Exercício 4 - Suponha que os resultados dos testes de um vestibular se ajustem a uma distribuição normal. 
#               Além disso, a pontuação média do teste é de 72 e o desvio padrão é de 15,2. 
#               Qual é a porcentagem de alunos que pontuaram 84 ou mais no exame? E qual a porcentagem dos que pontuaram exatamente 87?

mean <- 72
sd <- 15.2
x <- 84
x2 <- 87

# Calculando a probabilidade acumulada até x
prob_above_x <- pnorm(x, mean = mean, sd = sd, lower.tail = FALSE)

# Explicação
# - A função pnorm é usada para calcular a probabilidade acumulada da distribuição normal até um determinado valor (84, no caso) com uma média
#   de 72 e um desvio padrão de 15.2. O parâmetro lower.tail = FALSE indica que estamos interessados na probabilidade da cauda superior
#   (pontuações acima de 84).


# Convertendo para porcentagem
percentage_above_x <- prob_above_x * 100
percentage_above_x

# - O resultado dos alunos que pontuaram 84 ou mais no exame é de 21.49%


# Calculando exatamente 87 de 2 formas

# calculando a probabilidade de cair dentro desse intervalo em vez de exatamente no valor.
prob_exact_87 <- pnorm(x2 + 0.5, mean = mean, sd = sd, lower.tail = TRUE) - pnorm(x2 - 0.5, mean = mean, sd = sd, lower.tail = TRUE)

# calcular a densidade de probabilidade no valor exato (x2)
prob_exact_87_2 <- dnorm(x2, mean = mean, sd = sd)

# Convertendo para porcentagem
percentage_exact_87 <- prob_exact_87 * 100
percentage_exact_87                                    # 1.61285
percentage_exact_87_2 <- prob_exact_87_2 * 100       
percentage_exact_87_2                                  # 1.612858

# - O resultado dos alunos que pontuaram exatamente 87 é de 1.61%.





# Exercício 4.1 -  Criando dataframe do exemplo anterior para responder as perguntas:
#                  Qual porcentagem dos alunos ficaram acima da média requerida (70) ? 
#                  Qual a porcentagem dos alunos que ficaram acima de 80 ?
#                  Qual a porcentagem dos alunos que ficaram acima de 90 ?
#                  Qual a porcentagem dos alunos que ficaram abaixo de 50 ?

# gerando 100 números aleatórios e que estejam dentro do intervalo de 0 a 100
aleatorios <- rnorm(1000, mean = 72, sd = 15.2)
aleatorios <- pmax(0, pmin(100, aleatorios))

# criando dataframe
notas <- data.frame(id = 1:1000, notas = aleatorios)
View(notas)

# resumo estatístico
notas_summarize <- 
  notas %>% 
  summarise(media_nota = mean(notas),
            desvio = sd(notas))
notas_summarize

# respondendo as perguntas

porcentage_acima_70 <- pnorm(70, mean = mean(notas$notas), sd = sd(notas$notas), lower.tail = FALSE)
porcentage_acima_70 * 100  # 56.91

porcentage_acima_80 <- pnorm(80, mean = mean(notas$notas), sd = sd(notas$notas), lower.tail = FALSE)
porcentage_acima_80 * 100  # 30.73

porcentage_acima_90 <- pnorm(90, mean = mean(notas$notas), sd = sd(notas$notas), lower.tail = FALSE)
porcentage_acima_90 * 100  # 11.87

porcentage_abaixo_50 <- pnorm(50, mean = mean(notas$notas), sd = sd(notas$notas))
porcentage_abaixo_50 * 100 # 6.30


# respondendo

# - alunos que ficaram com nota acima de 70 representam 56.91%.
# - alunos que ficaram com nota acima de 80 representam 30.73%
# - alunos que ficaram com nota acima de 90 representam 11.87%.
# - alunos que ficaram com nota abaixo de 50 representam 6.30%.







# Exercício 5 - Suponha que o tempo médio de check-out de um caixa de supermercado seja de três minutos. 
#               Encontre a probabilidade de um check-out do cliente ser concluído pelo caixa em menos de dois minutos. (Distribuição Exponencial)

pexp(2, rate=1/3)

# Explicação
# - A taxa de processamento de checkout é igual a uma dividida pelo tempo médio de conclusão da finalização. 
#   Por isso, a taxa de processamento é de 1/3 de checkouts por minuto. 
#   Em seguida, aplicamos a função pexp da distribuição exponencial com taxa = 1/3

# - A probabilidade é de 48.65%.






# Exercício 6 - Suponha que o tempo médio de que um atendendente de hotel seja atender 2 clientes a cada 5 minutos.
#               Encontre a probabilidade de o atendente atender 2 clientes seja de 3 minutos. (Distribuição Exponencial)

pexp(3, rate=2/5)

# Explicação
# - Usando a distribuição exponencial para modelar o tempo entre atendimentos consecutivos de um atendente de hotel, onde o tempo médio para
#   atender 2 clientes é de 5 minutos. Isso implica uma taxa de atendimento de 2/5, ou seja, 2 atendimentos a cada 5 minutos.
# - Ao calcular a probabilidade usando a função pexp com um tempo de 3 minutos, você está procurando a probabilidade de que um atendimento seja
#   concluído em menos de 3 minutos. Como você mencionou, o resultado é aproximadamente 69.88%, o que significa que há uma probabilidade de cerca
#   de 69.88% de que um atendente do hotel complete o atendimento de 2 clientes em menos de 3 minutos.

# - A probabilidade é de 69.88%.






# Exercício 7 - Suponha que o tempo médio de um carro passar por um pedágio seja de 30 segundos. Encontre a probabilidade de um carro passar
#               pelo pedágio em menos de 20 segundos. (Distribuição Exponencial)

pexp(20, rate = 1/30) * 100         #  Isso implica uma taxa de passagem de 1/30, ou seja, um carro a cada 30 segundos.

# - A probabilidade é de 48.65%.





# Exercício 8 - Suponha que o tempo médio de espera em uma fila de um banco seja de 10 minutos. Encontre a probabilidade de um cliente esperar
#               na fila por menos de 5 minutos. (Distribuição Exponencial)

pexp(5, rate = 1/10) * 100          #  Isso implica uma taxa de atendimento de 1/10, ou seja, um cliente a cada 10 minutos.

# - A probabilidade é de 39.34%.






# Exercício 9 - Selecione dez números aleatórios entre um e três.

?runif
x <- runif(10, min = 1, max = 3)
x

# Explicação
# - Aplicamos a função de geração runif da distribuição uniforme para gerar dez números aleatórios entre um e três.






# Exercício 10 - Suponha que, em média, 12 carros atravessem uma ponte por minuto. Encontre a probabilidade de ter 14 ou MENOS carros cruzando
#                a ponte em um determinado minuto. (Distribuição Poisson)

ppois(14, lambda = 12)

# - A probabilidade é de 77.20%.

# Explicação
# - Este cálculo ppois(14, lambda = 12) calcula a probabilidade acumulada até 14 carros, o que é o equivalente a ter 14 ou menos carros.






# Exercício 11 - Suponha que, em média, 12 carros atravessem uma ponte por minuto. Encontre a probabilidade de ter 15 ou MAIS carros cruzando
#                a ponte em um determinado minuto. (Distribuição Poisson)

ppois(15, lambda = 12, lower = FALSE)

# - A probabilidade é de 15.55%.

# Explicação 
# - Para obter a probabilidade de ter 15 ou mais carros, você deve calcular a probabilidade acumulada até 15 e subtrair da probabilidade acumulada 
#   até 14.
# - Este cálculo ppois(15, lambda = 12, lower = FALSE) calcula exatamente isso, a probabilidade de ter 15 ou mais carros cruzando a ponte em um
#   determinado minuto usando a distribuição de Poisson com uma média de 12 carros.







# Exercício 12 - Suponha que haja 12 questões de múltipla escolha em um questionário de inglês. 
#                Cada questão tem cinco respostas possíveis e apenas uma delas está correta. 
#                Encontre a probabilidade de ter quatro ou menos respostas corretas se um aluno tentar responder a cada pergunta 
#                aleatoriamente. (Distribuição Binominal com probabilidade acumulada)

# Defina os parâmetros
numero_questoes <- 12
probabilidade_correta <- 1/5
numero_respostas_corretas <- 4

# Calcule a probabilidade acumulada até 4 respostas corretas
probabilidade <- pbinom(numero_respostas_corretas, size = numero_questoes, prob = probabilidade_correta)
probabilidade

# - A probabilidade é de aproximadamente 92.74% de ter quatro ou menos respostas corretas em 12 questões, considerando respostas aleatórias com
#   uma probabilidade de resposta correta de 0,2.


# Explicação
# - Nesse exercício, estamos lidando com um problema de distribuição binomial, onde temos um número fixo de ensaios independentes (cada pergunta
#   do questionário) e cada ensaio tem duas opções (resposta correta ou incorreta). A probabilidade de sucesso (resposta correta) é de 1/5,
#   já que há cinco respostas possíveis e apenas uma está correta.

# - Nesse código, estamos usando a função pbinom() para calcular a probabilidade acumulada de ter 4 ou menos respostas corretas em 12 questões
#   de múltipla escolha com uma probabilidade de resposta correta de 1/5.

# - Lembre-se de que a probabilidade pode ser calculada para 0, 1, 2, 3 ou 4 respostas corretas, pois estamos interessados em até quatro 
#   respostas corretas.







# Exercício 13 - Suponha que um teste de matemática contenha 15 questões de múltipla escolha. Cada questão tem quatro opções de resposta, mas
#                apenas uma é correta. Qual é a probabilidade de um aluno obter 10 ou menos respostas corretas se ele responder aleatoriamente?
  
numero_questoes <- 15
probabilidade_correta <- 1/4
numero_respostas_corretas <- 10

# Calcule a probabilidade acumulada até 10 respostas corretas
probabilidade <- pbinom(numero_respostas_corretas, size = numero_questoes, prob = probabilidade_correta)
probabilidade * 100

# - A probabilidade é de aproximadamente 99.98% de ter 10 ou menos respostas corretas em 15 questões, considerando respostas aleatórias com
#   uma probabilidade de resposta correta de 0,25.





  
# Exercício 14 - Em um exame de ciências, há 20 perguntas verdadeiro/falso. Se um aluno tentar responder cada pergunta aleatoriamente, qual é
#                a probabilidade de ele obter 15 ou mais respostas corretas?

n_q <- 20
p_c <- 1/2
n_r <- 15

prob <- pbinom(n_r, size = n_q, prob = p_c, lower.tail = TRUE)
prob * 100


# - A probabilidade é de aproximadamente 99.40% de ter 15 ou menos respostas corretas em 20 questões, considerando respostas aleatórias com
#   uma probabilidade de resposta correta de 0,5.








### Cenário com Distribuição Binomial:

# Problema: Uma loja online vende um produto popular que tem uma taxa de retorno de 20%. Se 100 clientes comprarem esse produto, qual é a
#           probabilidade de exatamente 15 clientes solicitarem um reembolso?

prob <- dbinom(15, size = 100, prob = 0.20)
prob * 100

# - Aproximadamente 4.80% 5 clientes solicitariam um reembolso. Isso significa que, em média, cerca de 4 a 5 clientes entre 100 podem ser
#   esperados para solicitar um reembolso.






### Cenário com Distribuição Binomial (com probabilidade acumulada):
  
# Problema: Uma empresa de marketing digital lançou uma campanha de email para promover um novo produto. A taxa de conversão esperada da 
#           campanha é de 10%, ou seja, a probabilidade de um cliente que recebe o email realizar uma compra é de 0,1. Se a empresa enviou o
#           email para 2000 clientes, qual é a probabilidade de que pelo menos 200 clientes realizem uma compra?

prob <- pbinom(199, size = 2000, prob = 0.1, lower.tail = FALSE)
prob * 100

# - Aproximadamente 51.09%, indica a probabilidade de pelo menos 200 clientes realizarem uma compra, considerando a taxa de conversão de 10% e
#   o envio do email para 2000 clientes. 

# Explicação
# - o problema solicita a probabilidade de pelo menos 250 clientes realizarem uma compra. Para isso, você precisa somar as probabilidades
#   de 250, 251, 252, ... até o valor máximo possível.
# - Por isso a abordagem correta seria usar pbinom com o parâmetro lower.tail = FALSE para calcular a probabilidade cumulativa da cauda superior
#   da distribuição binomial até o valor desejado. 






### Cenário com Distribuição Poisson:

# Problema: Uma loja online recebe, em média, 50 pedidos por hora. Qual é a probabilidade de a loja receber mais de 60 pedidos em uma hora
#           específica?

prob_60_ped <- dpois(50, lambda = 60)
prob_60_ped * 100

# - Aproximadamente 2.32% de receber mais de 60 pediso em uma hora específica.
# - Isso significa que é relativamente raro que a loja receba mais de 60 pedidos em uma única hora, com base nessa taxa média de pedidos. 







### Cenário com Distribuição Exponencial:

# Problema: Uma empresa de suporte técnico recebe uma média de 8 chamadas por hora. Qual é a probabilidade de que a próxima chamada seja atendida
#           em menos de 10 minutos?

prob <- pexp(10, 8/60)   # Isso implica uma taxa de atendimento de 8/60 chamadas por minuto
prob * 100

# - A probabilidade é de 73.64%.



