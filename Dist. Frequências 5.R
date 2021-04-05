ErrosO = c(1, 0, 1, 0, 0, 0, 0, 2, 3, 0, 1, 2, 3, 4, 0, 0, 0, 1, 4, 1, 1, 0, 0, 3, 5, 1, 0, 0, 1)

frequencia_simples = table (ErrosO)
TabelaE <- data.frame(frequencia_simples)

frequencia_relativa_simples = frequencia_simples/sum(frequencia_simples)*100
TabelaE$frporcentual = frequencia_relativa_simples #acrescenta coluna
frequencia_acumulada = cumsum(frequencia_simples)
TabelaE$FAC = frequencia_acumulada
frequencia_relativa_acumulada = frequencia_acumulada/sum(frequencia_simples)*100
TabelaE$FACporcentual = frequencia_relativa_acumulada
plot(TabelaE$ErrosO, TabelaE$frporcentual)
ggplot(TabelaE, aes (x = ErrosO, y = frequencia_relativa_simples)) + geom_bar(stat = "identity")

install.packages("ggplot2")
library(ggplot2)