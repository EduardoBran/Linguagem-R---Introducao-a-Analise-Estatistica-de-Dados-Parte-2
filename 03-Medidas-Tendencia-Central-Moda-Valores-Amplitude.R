# Medidas de Tendência Central - Moda, Valores Máximo e Mínimo e Amplitude

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



#####  Moda  #####

# - A moda de uma distribuição é o valor que ocorre mais frequentemente, ou o valor que corresponde ao intervalo de
#   classe com a maior frequência.

# - A moda, da mesma forma que a mediana, não é afetada por valores extremos.
#   ( a média é afetada por valores extremos (outliers) )

# - Uma distribuição de frequência que apresneta apenas uma moda é chamada de unimodal.
# - Se a frequência apresenta dois pontos de alta concentração, ela é chamada de bimodal.

# - Distribuições bimodais ou multimodais podem indicar que na realidade a distribuição de frequência se refere a duas
#   populações cujas medidas foram misturadas.

# - Por exemplo, suponha que um lote de caixas de leite longa vida é amostrado e em cada caixa da amostra é medido o volume
#   envasado. Se o lote é formado pela produção de duas máquinas de envase que estão calibrados em valores diferentes, é
#   possível que o histograma apresente duas modas, uma para cada valor da calibração

# - Usar apenas uma medida de tendência central provavelmente não descreve completamente os dados.



# Exemplo: Uma loja de calçados quer saber qual o tamanho mais comprado em uma dia de vendas.
#          A partir dos dados coletados a seguir, determine o tamanho mais pedido.

tamanhos = c(38, 38, 36, 37, 36, 36, 40, 39, 36, 35, 36)

mean(tamanhos)
median(tamanhos)

moda <- function(dados) {
  
  vetor = table(as.vector(dados))
  names(vetor)[vetor == max(vetor)]
  
}

moda(tamanhos)




#####  Valores Máximo e Mínimo  #####

# - Representam os valores máximos e mínimos da distribuição de dados


# Exemplo: Quais são os valores máximos e mínimos dos tamanhos de sapatos do objeto abaixo?

tamanhos = c(38, 38, 36, 37, 36, 36, 40, 39, 36, 35, 36)

max(tamanhos)
min(tamanhos)




#####  Amplitude  #####

# - A amplitude é a diferença entre o maior e menor valor de um conjunto de dados qualquer

# - Amplitude = Valor máximo - Valor mínimo


# Exemplo: Bob quer aprender a voar com asa delta, e ele quer saber qual a amplitude máxima que um voo pode ter.
#          A partir dos dados de outros praticantes de voo livre, determine qual a amplitude.

dados = c(28, 31, 45, 58, 22, 33, 42, 68, 24, 37)

range(dados)          # função range exibe os valores máximo e mínimo de uma vez ( mesma coisa que max() e min() )

diff(range(dados))    # função diff() calcula a diferença de um valor para outro



