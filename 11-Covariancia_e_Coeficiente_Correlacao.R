# Covariância e Coeficiente de Correlação 

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



# - O histograma quanto o boxplot são gráficos estatísticos amplamente utilizados para visualizar e analisar a distribuição dos dados.
# - A principal característica similar entre eles é que ambos fornecem informações sobre a distribuição dos dados, como tendências centrais,
#   dispersão e presença de outliers.

# - Podemos observar também que tanto o histograma como o boxplot utiliza uma única variável (utilizamos apenas 1 coluna) para interpretar os dados.

# - E como fazer quando precisarmos interpretar 2 variáveis ?
#   Para o gráfico, usaremos o gráfico de dispersão (scatterplot) por que assim mostraremos a relação entre as duas variáveis.
#   E além disso usamos a Covariância e o Coeficiente de Correlação.




######  Covariância  #####

# - A covariância entre duas variáves (X e Y) é uma medida de variabilidade conjunta dessas duas variáveis aleatórias.
#   Quando a covariâncias entre essas variáveis é positiva os dados apresentam tendência positiva na dispersão.
#   Quando o valor da covariância é negativo, o comportamente é análogo, no entando, os dados apresentam tendências negativas.

# - Covariância é uma medida de como as alterações em uma variável estão associadas a mudanças em uma segundo variável.
#   Especificamente, a covariância mede o grau em que duas variáveis estão linearmente associadas.
#   No entanto, também é frequentemente usado informalmente como uma medida geral de como duas variáveis são monotonicamente relacionadas.



# - Se utilizarmos a Covariância, é mais complicado analisar os resultados, então o que fazemos ?
#   Nós calculamos o Coeficiente de Correlação, onde colocamos a covariância em uma escala com valores de -1 e 1.


##### Coeficiente de Correlação #####

# - Correlação é uma versão em escala de covariância que assume valores em [−1,1] com uma correlação de ± 1 indicando associação linear
#   perfeita e 0 indicando nenhuma relação linear. 
# - Esse escalonamento torna a correlação invariante às mudanças na escala das variáveis originais. 
# - A constante de escala é o produto dos desvios padrão das duas variáveis.

# -  Portanto, o Coeficiente de Correlação p mede o grau de correlação entre duas variáveis.

# - Para p = 1, tem-se uma correlação perfeita entre as duas variáveis. 
#   Se p = - 1, há uma correlação perfeita entre as variáveis, no entanto, essa correlação é negativa. 
#   Caso p = 0, as duas variáveis não dependem linearmente uma da outra.

# - Para p = -1 indica uma forte correlação negativa: isso significa que toda vez que x aumenta, y diminui 
# - Para p = 0 significa que não há associação entre as duas variáveis (x e y) 
# - Para p = 1 indica uma forte correlação positiva: isso significa que y aumenta com x 



# Exemplo: Analisar a covariância e correlação entre as variáveis milhas/galão (mpg) e peso (wt) do veículo no dataset mtcars.

# - Ao analisar a covariância e correlação entre as variáveis mpg e wt no dataset mtcars, podemos determinar se há uma relação linear entre
#   o consumo de combustível (mpg) e o peso do veículo (wt). Isso nos ajuda a entender se o peso do veículo afeta diretamente o consumo de
#   combustível e qual é a direção e intensidade dessa relação. Essas informações podem ser úteis em análises de eficiência de combustível, 
#   comparações de desempenho entre veículos e tomada de decisões relacionadas à economia de combustível.

install.packages("ggpubr")
library("ggpubr")           # necessário para gerar gráfico de dispersão

# carregando dados
dados <- mtcars
View(dados)

# gerando um gráfico de dispersão (scatterplot)

ggscatter(dados, x = "mpg", y = "wt",
          add = "reg.line", conf.int = TRUE,
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Autonomia", ylab = "Peso do Veículo")


# Definindo x e y

x = dados$mpg
y = dados$wt

# Covariância

cov(x, y)      # 5.116685

# Correlação

cor(x, y)      # -0.8676594

# Conclusão

# - Para p = -1 (o valor foi de -0.8676594) indica uma forte correlação negativa: isso significa que toda vez que x aumenta, y diminui.






