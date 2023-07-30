# Como Construir uma Distribuição de Probabilidade


# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/9.Introducao-a-Analise-Estatistica-de-Dados---Parte-2")
getwd()



# Vamos construir uma Distribuição de Probabilidade, o objetivo aqui é didático. Não vamos construir manualmente uma Distribuição de Probabilidade
# pois temos funções no R ou Python que fazem isso para nós.


# Iremos construir uma Distribuição de Probabilidade para Variável Aleatória Discreta (ou seja nós vamos usar uma contagem de valores) 
# (seria variável contínua se fosse medição)



# - Primeira coisa a fazer é Definir o Problema de Negócio.

# - Definindo o problema:

#   -> O gerente de um restaurante precisa saber qual a probabilidade de grupos de pessoas visitarem o restaurante a fim de organizar melhor as
#      mesas e oferecer uma experiência mais agradável aos clientes.

#   -> O experimento foi realizado com 50 observações e grupos com 2 a 6 pessoas. Um atendente registrou a frequência (ou seja, contou) a 
#      quantidade de grupos que chegaram ao restaurante. (o atendente marcava um 'x' no grupo de 2 pessoas caso chegassem 2 pessoas e etc...)

#   -> Por que não considerar grupo de 1 ou mais de 7 pessoas ? Pois o experimento contratado pelo gerente pedia grupos de 2 a 6 pessoas.


# - Agora vamos construir a tabela:

# - onde 'Grupo(x)' é a nossa variável aleatória discreta, 'Frequencia' é a contagem de grupos que chegou ao restaurante
#   'Frequencia Relativa' que é a Frequencia / Total e por fim a 'Probabilidade'


#      Grupo(x)                   Fequência                    Frequência Relativa                     Probabilidade P(x)

#   Grupo com 2 pessoas              17                            17/50 = 0.34                              0.34
#   Grupo com 3 pessoas               6                             6/50 = 0.12                              0.12
#   Grupo com 4 pessoas              16                            16/50 = 0.32                              0.32  
#   Grupo com 5 pessoas               4                             4/50 = 0.08                              0.08    
#   Grupo com 6 pessoas               7                             7/50 = 0.14                              0.14      
        
#        Total                       50                                1.00                                   1.0  


# - A partir dessa tabela, concluímos que o gerente do restaurante pode tomar decisões mais informadas sobre como organizar as mesas para melhor
#   acomodar os clientes. Por exemplo, ele pode preparar mais mesas para grupos de 2 e 4 pessoas, já que eles são os mais frequentes.



# - A distribuição de probabilidade é uma ferramenta poderosa para entender a incerteza associada a um determinado evento ou experimento, e pode
#   ser usada para tomar decisões estratégicas em diversas áreas, incluindo negócios, ciências e engenharia.



