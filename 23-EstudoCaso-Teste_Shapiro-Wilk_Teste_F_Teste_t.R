# Estatística na Prática 2 - Teste de Shapiro-Wilk, Teste F e Teste t


# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()


# Pacotes

if(!require(car)) install.packages("car")     # verifica se o pacote é exigido e instala ou não
library(car)                                  # utiliza funções como qqplot
library(tidyverse)                            # utiliza funções para visualizar/modelar/processar dados



# - Para este Estudo de Caso aplicaremos 3 importantes testes estatísticos: Teste de Shapiro-Wilk, Teste F e Teste t.

# - Usaremos como fonte de dados o dataset 'sleep' disponível no R.
# - Esse dataset é resultado de um trabalho de pesquisa com pacientes que possuem dificuldades para dormir. Os pacientes foram separados 
#   em 2 grupos e cada grupo recebeu um medicamento diferente para tratar distúrbios no sono e ajudar a aumentar o tempo dormindo.

View(sleep)
head(sleep)

# -> extra - Variável numérico que indica quantas horas a mais ou a menos o paciente dormiu após receber o medicamento. 
#            Esta será nossa variável dependente.
# -> group - Variável do tipo fator (categórica) que indica o medicamento usado pelo paciente (1 ou 2).
#            Está será nossa variável independente.
# -> id    - Indentificação do paciente.


## Nosso objetivo é responder a seguinte pergunta:

# - Existe diferença significativa na média de sono dos 2 grupos de pacientes, ou seja, há diferença significativa entre os 2 medicamentos
#   ajudam no distúrbio do sono?


# - Como tempos duas amostras (dois grupos), podemos aplicar o Teste t para responder à pergunta. Mas para aplicar o Teste t, precisamos
#   validar suas suposições e para isso precisamos do Teste de Shapiro-Wilk e do Teste F.

# - Definimos assim as hipóteses para nosso teste:

#  -> H0 (Hipóteste Nula)         = Não há diferença significativa entre as médias dos 2 grupos.
#  -> Há (Hipóteste Alternativa)  = Há diferença significativa entre as médias dos 2 grupos.


# - A interpretação do resultado do Teste t ajudará a definir se devemos ou não rejeitar a H0 e responder a pergunta de negócio deste
#   estudo de caso.

# - Como temos 2 grupos podemos aplicar o Teste t, caso fossem 3 grupos aplicaríamos teste ANOVA.


# - Para aplicar o Teste t primeiro precisamos validar as 5 suposições do Teste.

#  1 -> Os dados são aleatórios e representativos da população (apesar de não ser eu a coletar os dados, vamos considerar como verdadeiras)
#  2 -> A variável dependente é contínua. (olhando para a variável 'extra' no dataset percebemos que a variável é contínua)
#  3 -> Ambos os grupos são independentes (ou seja, grupos exaustivos e excludentes). (mesmor raciocínio do 1º caso)
#  4 -> Os resíduos do modelo são normalmente distribuídos. (os dados seguem uma distribuição normal? Para validar, aplicaremos teste estatístico)
#  5 -> A variância residual é homogênea (princípio da homocedasticidade). (as duas amostras tem a mesma variância?)

# - Alguns não validam as suposições e realizam o teste. Isto está errado. Se não conseguir ou puder validar, devemos mudar o teste estatístico.

# - Para o nosso exemplo neste estudo de caso, iremos considerar como verdadeiras as suposições de 1 a 3 e validaremos as suposições 4 e 5.
#   Para a suposição 4 usaremos o Teste de Shapiro-Wilk e para a suposição 5 usaremos o Teste F.



## Validando a suposição 4


# Técnica mais simples utilizando qqPlot (pacote car)

# Extrair dados de um dos grupos

grupo_dois <- sleep$group == 2
grupo_dois

# Validando com qqPlot

qqPlot(sleep$extra[grupo_dois])
qqPlot(sleep$extra[! grupo_dois])   # nega grupo dois e pega o grupo 1


# Interpretando -> No grafico acima do grupo dois temos uma linha que indica a orientação dos dados, as bolinahs que são os pontos de dados
#                  e faixa em azul são os intervalo de confiança. Se os pontos de dados (bolinhas) estão dentro do intervalo, provavelmente é
#                  uma Distribuição Normal.
#                  No grafico que nega o grupo dois indica o mesmo racíocio e mostra as bolinhas também dentro da faixa.
#                  No fim isso serve mais para documentar o trabalho, ter uma visão gráfica.


# - Por ser mais seguro, é mais aconselhável a aplicar o teste estatístico.


# Teste de Normalidade shapiro.test()

# - Para dizer que uma distribuição é normal, o valor-p precisa ser maior do que 0.05.
# - H0 = Os dados seguem uma distribuição normal.

shapiro.test(sleep$extra[grupo_dois])    # valor-p = 0.3511 (ou seja, maior que 0.05)
shapiro.test(sleep$extra[! grupo_dois])  # valor-p = 0.4079 (ou seja, maior que 0.05)


# Interpretando -> O valor-p do teste de cada grupo é maior que 0.05 e então falhamos em rejeitar a H0. Neste caso consideramos H0 validada.
#                  Podemos assumir que os dados seguem uma distribuição normal.



## Validando a suposição 5 com Teste F

# Primeiro checamos se há valores ausentes (importante não ter valores ausentes, caso tenha, tratar primeiro e depois aplicar o teste)

colSums(is.na(sleep)) 


# Vejamos primeiro um resumo estatístico do dataset

sleep %>% group_by(group) %>%
  summarise(
    count = n(),
    mean = mean(extra, na.rm = TRUE),          # na.rm = TRUE é usado em várias funções estatísticas no R para indicar que valores ausentes (NA)
    sd = sd(extra, na.rm = TRUE))              # devem ser removidos.


# - Foi calcudo um resumo estatístico do conjunto de dados usando a função summarise() do pacote dplyr. O resumo inclui informações sobre
#   a contagem de observações (count), a média (mean), e o desvio padrão (sd) da variável extra, agrupadas por group.

# - O resultado dessa análise permitirá que você avalie a homogeneidade de variância entre os grupos e determine se é apropriado prosseguir com o
#   teste t. Se os desvios padrão entre os grupos forem significativamente diferentes, a suposição de homogeneidade de variância pode ser violada,
#   o que pode afetar a interpretação dos resultados do teste t.


# - Para rejeitar a hipóteste nula de que as médias do grupo são iguais, precisamos de um valor F alto (maior que 0.05).
# - H0 = As médias de dados extraídos de uma população normalmente distrbuída tem a mesma variância.


# Utilizando var.teste() para o teste f

resultado_teste_f <- var.test(data = sleep, extra ~ group)

resultado_teste_f                                            # F = 0.79834, num df = 9, denom df = 9, p-value = 0.7427


# Interpretando -> O valor-p do teste é de 0.7427, logo, maior que que 0.05. Falhamos em rejeitar a H0.
#                  Podemos assumir que não há diferença significativa entre as variâncias dos 2 grupos.


# Suposições validadas. Agora podemos aplicar o Teste t (comparar as médias de 2 grupos)


# - Aplicando Teste t para responder a questão: "H0 (hipóteste nula) - Não há diferença significativa entre a média dos 2 grupos."

resultado_teste_t <- t.test(data = sleep, extra ~ group, var.equal = TRUE)    # var.equal variancia = TRUE

resultado_teste_t                 # t = -1.8608, df = 18, p-value = 0.07919


# Análise Final

# - O valor-p do teste é de 0.07919, logo, maior que 0.05. Falhamos em rejeitar a H0.
# - Podemos concluir que os 2 grupos NÃO tem diferença significativa.

# - Logo não há diferença significativa entre os medicamentos aplicados para tratar distúrbios de sono.







# - Quando não conseguimos validar as suposições, não usamos teste paramétrico.
#   Utilizamos então testes não paramétricos, que é usado justamente quando não conseguimos validar as suposições.
#   E assim temos outras forma de aplicar o teste e interpretar o resultado.






