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
#               Qual é a porcentagem de alunos que pontuaram 84 ou mais no exame?






# Exercício 5 - Suponha que o tempo médio de check-out de um caixa de supermercado seja de três minutos. 
# Encontre a probabilidade de um check-out do cliente ser concluído pelo caixa em menos de dois minutos.







# Exercício 6 - Selecione dez números aleatórios entre um e três.
# Aplicamos a função de geração runif da distribuição uniforme para gerar dez números aleatórios entre um e três.







# Exercício 7 - Se houver 12 carros atravessando uma ponte por minuto, em média, 
# encontre a probabilidade de ter 15 ou mais carros cruzando a ponte em um determinado minuto.
# A probabilidade de ter 14 ou menos carros atravessando a ponte em um determinado minuto é dada pela função ppois.







# Exercício 8 - Suponha que haja 12 questões de múltipla escolha em um questionário de inglês. 
# Cada questão tem cinco respostas possíveis e apenas uma delas está correta. 
# Encontre a probabilidade de ter quatro ou menos respostas corretas se um aluno tentar 
# responder a cada pergunta aleatoriamente.










