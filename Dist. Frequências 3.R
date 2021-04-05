PecasD = c(2, 0, 0, 4, 3, 0, 0, 1, 0, 0, 1, 1, 2, 1, 1, 1, 1, 1, 1, 0, 0, 0, 3,
           0, 0, 0, 2, 0, 0, 1, 1, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0)

frequencia_simples = table (PecasD)
Tabela0 <- data.frame(frequencia_simples)

frequencia_relativa_simples = frequencia_simples/sum(frequencia_simples)*100
Tabela0$frporcentual = frequencia_relativa_simples #acrescenta coluna
frequencia_acumulada = cumsum(frequencia_simples)
Tabela0$FAC = frequencia_acumulada
frequencia_relativa_acumulada = frequencia_acumulada/sum(frequencia_simples)*100
Tabela0$FACporcentual = frequencia_relativa_acumulada
plot(Tabela0$PecasD, Tabela0$frporcentual)
ggplot(Tabela0, aes (x = PecasD, y = frequencia_relativa_simples)) + geom_bar(stat = "identity")

install.packages("ggplot2")
library(ggplot2)

# a) Qual	é	a	porcentagem de	caixas	com	1	peça	defeituosa por	caixa?

  # R: 12 caixas de 48 = 25%

# b) Qual	é	a	porcentagem	de	caixas	com	2	ou	3	peças	defeituosas	por		caixa?

  # R: 7 caixas de 48 = 14,58%

# c) Qual	é	a	porcentagem	de	caixas	com	nenhuma	peça	defeituosa	por	caixa?

  # R: 28 caixas de 48 = 58,3%