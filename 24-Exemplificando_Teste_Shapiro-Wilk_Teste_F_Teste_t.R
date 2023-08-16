# Estatística na Prática 2 - Teste de Shapiro-Wilk, Teste F e Teste t


# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()


# Pacotes

library(car)                                  # utiliza funções como qqplot
library(tidyverse)                            # utiliza funções para visualizar/modelar/processar dados


# - Para estes Estudos de Caso aplicaremos 3 importantes testes estatísticos: Teste de Shapiro-Wilk, Teste F e Teste t.


# Exemplo 1

# - Usaremos como fonte de dados o dataset 'mtcars' disponível no R.
# - Utilizaremos conjunto de dados é o "mtcars", que contém informações sobre diferentes modelos de carros. 

View(mtcars)



### Nosso objetivo é responder a seguinte pergunta:

# - Verificar se há diferenças significativas nas médias e variâncias da variável 'mpg' (milhas por galão) em relação à variável 'am'.
# - Essa análise estatística permitirá determinar se existem diferenças estatisticamente significativas nas médias e variâncias da variável 'mpg'
#   em relação ao tipo de transmissão dos carros.


# - Teste de Shapiro-Wilk: Verifica se a variável 'mpg' segue uma distribuição normal.
# - Teste F: Compara as variâncias da variável 'mpg' entre diferentes valores da variável 'am' (0 automatic/1 manual transmission).
# - Teste t: Compara as médias da variável 'mpg' entre diferentes valores da variável 'am' (automatic/manual transmission).


# - Para aplicar o Teste t primeiro precisamos validar as 5 suposições do Teste.

#  1 -> Os dados são aleatórios e representativos da população (apesar de não ser eu a coletar os dados, vamos considerar como verdadeiras)
#  2 -> A variável dependente é contínua. (olhando para a variável 'extra' no dataset percebemos que a variável é contínua)
#  3 -> Ambos os grupos são independentes (ou seja, grupos exaustivos e excludentes). (mesmor raciocínio do 1º caso)
#  4 -> Os resíduos do modelo são normalmente distribuídos. (os dados seguem uma distribuição normal? Para validar, aplicaremos teste estatístico)
#  5 -> A variância residual é homogênea (princípio da homocedasticidade). (as duas amostras tem a mesma variância?)


# - Para o nosso exemplo neste estudo de caso, iremos considerar como verdadeiras as suposições de 1 a 3 e validaremos as suposições 4 e 5.
#   Para a suposição 4 usaremos o Teste de Shapiro-Wilk e para a suposição 5 usaremos o Teste F.



## Validando a suposição 4 (primeiro aplicando qqPlot do pacote car e depois aplicando teste estatístico Shapiro-Wilk) 

# Extrair dados de um dos grupos

grupo_zero <- mtcars$am == 0
grupo_zero

# Validando com qqPlot

qqPlot(mtcars$mpg[grupo_zero])
qqPlot(mtcars$mpg[! grupo_zero])

# Interpretando -> No grafico acima do grupo dois temos uma linha que indica a orientação dos dados, as bolinahs que são os pontos de dados
#                  e faixa em azul são os intervalo de confiança. Se os pontos de dados (bolinhas) estão dentro do intervalo, provavelmente é
#                  uma Distribuição Normal.
#                  No grafico que nega o grupo dois indica o mesmo racíocio e mostra as bolinhas também dentro da faixa.
#                  No fim isso serve mais para documentar o trabalho, ter uma visão gráfica.


# Aplicando teste Shapiro-Wilk (Para dizer que uma distribuição é normal, o valor-p precisa ser maior do que 0.05.)

shapiro.test(mtcars$mpg[grupo_zero])       # p-value = 0.8987 (ou seja, maior que 0.05)
shapiro.test(mtcars$mpg[! grupo_zero])     # p-value = 0.5363 (ou seja, maior que 0.05)

# Interpretando -> O valor-p do teste de cada grupo é maior que 0.05 e então falhamos em rejeitar a H0. Neste caso consideramos H0 validada.
#                  Podemos assumir que os dados seguem uma distribuição normal.



## Validando a suposição 5 com Teste F

# Primeiro checamos se há valores ausentes

colSums(is.na(mtcars))


# Vejamos primeiro um resumo estatístico do dataset

sleep %>% group_by(group) %>%
  summarise(
    count = n(),
    mean = mean(extra, na.rm = TRUE),          # na.rm = TRUE é usado em várias funções estatísticas no R para indicar que valores ausentes (NA)
    sd = sd(extra, na.rm = TRUE))              # devem ser removidos.


# - Essa diferença substancial nos desvios padrão entre os grupos pode indicar uma falta de homogeneidade de variâncias. Portanto, é recomendável
#   proceder com cautela ao aplicar o teste F neste caso específico. Se as variâncias não forem aproximadamente iguais, os resultados do teste F 
#   podem ser pouco confiáveis.


# Utilizando var.teste() para o teste f

resultado_teste_f <- var.test(data = mtcars, mpg ~ am)

resultado_teste_f                                        # F = 0.38656, num df = 18, denom df = 12, p-value = 0.06691

# Interpretando -> O valor-p do teste é de 0.06691, logo, maior que que 0.05. Falhamos em rejeitar a H0.
#                  Podemos assumir que não há diferença significativa entre as variâncias dos 2 grupos.


# Suposições validadas. Agora podemos aplicar o Teste t (comparar as médias de 2 grupos)


# - Aplicando Teste t para responder a questão: "H0 (hipóteste nula) - Não há diferença significativa entre a média dos 2 grupos."

resultado_teste_t <- t.test(data = mtcars, mpg ~ am, var.equal = TRUE)

resultado_teste_t                 # t = -4.1061, df = 30, p-value = 0.000285


# Análise Final

# - O valor-p do teste é de 0.000285, logo, menor que 0.05. Validamos a H0.
# - Podemos concluir que os 2 grupos tem sim uma diferença significativa.

# - Isso significa que há diferença significativa entre as médias e variâncias da variável 'mpg' (milhas por galão) em relação à variável 'am'.

# - Logo podemos afirmar que existem diferenças estatisticamente significativas nas médias e variâncias da variável 'mpg'
#   em relação ao tipo de transmissão dos carros.






# Exemplo 2

# - Usaremos como fonte de dados o dataset 'ChickWeight' disponível no R.

data()
View(ChickWeight)


### Nosso objetivo é responder a seguinte pergunta:

# - Verificar se há diferenças significativas nas médias e variâncias da variável 'weight' em relação à variável 'Diet'.
# - Essa análise estatística permitirá determinar se existem diferenças estatisticamente significativas nas médias e variâncias da variável
#   'weight' em relação ao tipo de 2 dietas diferentes (dieta tipo 1 e dieta tipo 2).


## Validando a suposição 4 (primeiro aplicando qqPlot do pacote car e depois aplicando teste estatístico Shapiro-Wilk) 

# Extrair dados de um dos grupos

grupo_um <- ChickWeight$Diet == 1
grupo_um

grupo_dois <- ChickWeight$Diet == 2
grupo_dois

# Validando com qqPlot

qqPlot(ChickWeight$weight[grupo_um])
qqPlot(ChickWeight$weight[grupo_dois])


# Interpretando -> Podemos observar que nem todos os dados seguem uma distribuição normal.


# Aplicando teste Shapiro-Wilk (Para dizer que uma distribuição é normal, o valor-p precisa ser maior do que 0.05.)

shapiro.test(ChickWeight$weight[grupo_um])       # p-value = 2.211e-11 (ou seja, menor que 0.05)
shapiro.test(ChickWeight$weight[grupo_dois])     # p-value = 3.159e-07 (ou seja, menor que 0.05)


# Análise Final

# - Os testes de Shapiro-Wilk indicaram que as distribuições de 'weight' para ambos os grupos (dieta tipo 1 e dieta tipo 2) não seguem uma
#   distribuição normal. Portanto, não podemos assumir que os dados tenham uma distribuição normal.
# - Podemos afirmar que as distribuições de 'weight' diferem significativamente da normalidade para ambos os tipos de dieta.



# - Poderíamos então a partir daqui considerar métodos estatísticos não paramétricos ou outras abordagens para realizar análises e comparações
#   estatísticas.
