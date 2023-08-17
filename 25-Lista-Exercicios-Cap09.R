# Lista de Exercícios - CAP 09


# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()




# Exercício 1 - Gere 1000 números de uma distribuição normal com média 3 e sd = .25 e grave no objeto chamado x.

x <- rnorm(1000, mean = 3, sd = .25)
x






# Exercício 2 - Crie o histograma dos dados gerados no item anterior e adicione uma camada com a curva da normal.

hist(x, probability = TRUE)
curve(dnorm(x, mean = mean(x), sd = sd(x)), add = TRUE, col = "blue")






# Exercício 3 - Suponha que 80% dos adultos com alergias relatem alívio sintomático com uma medicação específica. 
#               Se o medicamento é dado a 10 novos pacientes com alergias, qual é a probabilidade de que ele seja 
#               eficaz em exatamente sete? (Distribuição Binomial)

res <- dbinom(7, size = 10, prob = 0.80)
res

# - A probabilidade é de 20.13%

## função para gerar gráfico
graph <- function(n,p){
  x <- dbinom(0:n,size=n,prob=p)
  barplot(x,ylim=c(0,0.4),names.arg=0:n,
          main=sprintf(paste('Binomial Distribution(n,p) ',n,p,sep=',')))
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





# Exercício 5 - Suponha que o tempo médio de check-out de um caixa de supermercado seja de três minutos. 
#               Encontre a probabilidade de um check-out do cliente ser concluído pelo caixa em menos de dois minutos.

pexp(2, rate=1/3)

# Explicação
# - A taxa de processamento de checkout é igual a uma dividida pelo tempo médio de conclusão da finalização. 
#   Por isso, a taxa de processamento é de 1/3 de checkouts por minuto. 
#   Em seguida, aplicamos a função pexp da distribuição exponencial com taxa = 1/3

# - A probabilidade é de 48.65%.






# Exercício 6 - Suponha que o tempo médio de que um atendendente de hotel seja atender 2 clientes a cada 5 minutos.
#               Encontre a probabilidade de um do atendente atender 2 clientes seja de 3 minutos.

pexp(3, rate=2/5)

# Explicação
# - Usando a distribuição exponencial para modelar o tempo entre atendimentos consecutivos de um atendente de hotel, onde o tempo médio para
#   atender 2 clientes é de 5 minutos. Isso implica uma taxa de atendimento de 2/5, ou seja, 2 atendimentos a cada 5 minutos.
# - Ao calcular a probabilidade usando a função pexp com um tempo de 3 minutos, você está procurando a probabilidade de que um atendimento seja
#   concluído em menos de 3 minutos. Como você mencionou, o resultado é aproximadamente 69.88%, o que significa que há uma probabilidade de cerca
#   de 69.88% de que um atendente do hotel complete o atendimento de 2 clientes em menos de 3 minutos.

# - A probabilidade é de 69.88%.






# Exercício 7 - Suponha que o tempo médio de um carro passar por um pedágio seja de 30 segundos. Encontre a probabilidade de um carro passar
#               pelo pedágio em menos de 20 segundos.

pexp(20, rate = 1/30) * 100         #  Isso implica uma taxa de passagem de 1/30, ou seja, um carro a cada 30 segundos.

# - A probabilidade é de 48.65%.





# Exercício 8 - Suponha que o tempo médio de espera em uma fila de um banco seja de 10 minutos. Encontre a probabilidade de um cliente esperar
#               na fila por menos de 5 minutos.

pexp(5, rate = 1/10) * 100          #  Isso implica uma taxa de atendimento de 1/10, ou seja, um cliente a cada 10 minutos.

# - A probabilidade é de 39.34%.






# Exercício 9 - Selecione dez números aleatórios entre um e três.

?runif
x <- runif(10, min = 1, max = 3)
x

# Explicação
# - Aplicamos a função de geração runif da distribuição uniforme para gerar dez números aleatórios entre um e três.







# Exercício 10 - Suponha que, em média, 12 carros atravessem uma ponte por minuto. Encontre a probabilidade de ter 15 ou mais carros cruzando
#                a ponte em um determinado minuto.







# Exercício 11 - Suponha que haja 12 questões de múltipla escolha em um questionário de inglês. 
#                Cada questão tem cinco respostas possíveis e apenas uma delas está correta. 
#                Encontre a probabilidade de ter quatro ou menos respostas corretas se um aluno tentar responder a cada pergunta 
#                aleatoriamente.










