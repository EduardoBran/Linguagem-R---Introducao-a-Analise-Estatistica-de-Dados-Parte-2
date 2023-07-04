# Medidas de Dispersão - Coeficiente de Variação

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



# Estudamos duas medidas de dispersão: Desvio Padrão e Variância. 
# Mas será que elas são suficiente para comparar dois conjuntos de dados ? Provavelmente não.

# Por nós precisamos do Coeficiente de Variação



#####  Coeficiente de Variação  #####

# - O coeficiente de variação indica a quantidade de variação de um conjunto de dados em relação a média.
# - O valor é dado por uma relação direta entre o desvio com a média da amostra.

# - O coeficiente de variação (CV), mede o desvio padrão em termos de percentual da média.
# - Um CV alto, indica alta variabilidade dos dados, ou seja, menos consistência dos dados.
#   UM CV menor, indica mais consistência dentro do conjunto de dados.

# - Quando comparamos a consistência entre 2 conjuntos dedados em relação a suas médias, é melhor feito quando utilizamos
#   coeficiente de variação.

# - O coeficiente de variação é útil quando queremos comparar a consistência ou a dispersão de dois conjuntos de dados que
#   possuem médias diferentes. Ele nos permite avaliar a proporção da variabilidade em relação às médias dos conjuntos, o
#   que é especialmente importante quando as grandezas medidas têm diferentes escalas ou unidades.


# Exemplo: Imagine um investidor está decidindo se compra ações da Nike ou Adidas na bolsa de valores.
#          O valor médio da ação de cada empresa e o desvio padrão são dados a seguir.

# Nike   ==> valor médio da ação = $55.62 / desvio padrão = $5.10
# Adidas ==> valor médio da ação = $24.86 / desvio padrão = $3.60

# Qual deve ser a escolha do investidor ?

nike_media <- 55.62
nike_desvio_padrao <- 5.10

adidas_media <- 24.86
adidas_desvio_padrao <- 3.60

# CV = (desvio/media) * 100

CV_nike <- (nike_desvio_padrao/nike_media) * 100
CV_adidas <- (adidas_desvio_padrao/adidas_media) * 100

print(CV_nike)   # 9.16
print(CV_adidas) # 14.48


# Conclusão

# - Um investidor se sentira mais seguro em adquirir as ações da Nike, pois o preço das ações teria uma variação menor,
#   podendo assim evitar perdas e permitir ao investidor ter um investimento mais seguro.



