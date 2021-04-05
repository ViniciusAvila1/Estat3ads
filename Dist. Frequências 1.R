Acidentes = c(6,9,2,7, 0,8, 2, 5, 4, 2,5, 4, 4, 4, 4, 2, 5, 6, 3, 7,3 ,8, 8, 4,
              4, 4, 7, 7, 6, 5, 4, 7, 5,3,3, 1, 3, 8, 0, 6, 5, 1, 2, 3, 3, 0, 5, 6, 6, 3)

frequencia_simples = table (Acidentes)
Tabelaz <- data.frame(frequencia_simples)

frequencia_relativa_simples = frequencia_simples/sum(frequencia_simples)*100
Tabelaz$frporcentual = frequencia_relativa_simples #acrescenta coluna
frequencia_acumulada = cumsum(frequencia_simples)
Tabelaz$FAC = frequencia_acumulada
frequencia_relativa_acumulada = frequencia_acumulada/sum(frequencia_simples)*100
Tabelaz$FACporcentual = frequencia_relativa_acumulada
plot(Tabela$Acidentes, Tabelaz$frporcentual)
ggplot(Tabelaz, aes (x = Acidentes, y = frequencia_relativa_simples)) + geom_bar(stat = "identity")
