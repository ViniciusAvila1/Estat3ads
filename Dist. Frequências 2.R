Precos = c(50,50,52,52,52,52,52,52,54,53,53,53,53,53,53,51,51,51,51,51)

frequencia_simples = table (Precos)
Tabela <- data.frame(frequencia_simples)

frequencia_relativa_simples = frequencia_simples/sum(frequencia_simples)*100
Tabela$frporcentual = frequencia_relativa_simples #acrescenta coluna
frequencia_acumulada = cumsum(frequencia_simples)
Tabela$FAC = frequencia_acumulada
frequencia_relativa_acumulada = frequencia_acumulada/sum(frequencia_simples)*100
Tabela$FACporcentual = frequencia_relativa_acumulada
plot(Tabela$Precos, Tabela$frporcentual)
ggplot(Tabela, aes (x = Precos, y = frequencia_relativa_simples)) + geom_bar(stat = "identity")


# a) Qual	a	porcentagem	de	lojas	com	preço	maior	que	R$52,00?

  # R: 7 lojas de 20 =  35%

# b) Qual	a	porcentagem	de	lojas	com	preço	maior	do	que	R$51,00	e	menor	do	que	$54,00?
  
  # R: 12 lojas de 20 = 60%

# c) Qual	é	a	porcentagem	de	lojas	com	preço	igual	a	R$	53,00?

  # R: 6 lojas de 20 = 30%

# d) Qual	é	a	porcentagem	de	lojas	com	preços	R$	50,00	ou	R$	51,00?

  # R: 7 lojas de 20 = 35%