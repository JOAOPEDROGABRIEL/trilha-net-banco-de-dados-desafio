/*
	Nome: João Pedro Gabriel
	Github: github.com/JOAOPEDROGABRIEL
*/

-- Resolução das Atividades Propostas em https://github.com/digitalinnovationone/trilha-net-banco-de-dados-desafio/

-- Resolução da Atividade 1
Select
	Nome,
	Ano
From Filmes

-- Resolução da Atividade 2

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Order By Ano ASC -- caso não omitido

	--OU

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Order By Ano -- caso omitido

-- Resolução da Atividade 3

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Where Nome = 'De Volta para o Futuro'

-- Resolução da Atividade 4

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Where Ano Like '1997'

-- Resolução da Atividade 5

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Where Ano Like '2%'

	--OU

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Where Ano > '2000'

-- Resolução da Atividade 6

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Where Duracao > 100 AND Duracao < 150
	Order By Duracao ASC -- caso não omitido

	--OU

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Where Duracao > 100 AND Duracao < 150
	Order By Duracao -- caso omitido

-- Resolução da Atividade 7

Select
	Ano,
	Count(Ano) Quantidade
From Filmes
	Group By Ano
	Order By Count(Ano) DESC

-- Resolução da Atividade 8

Select
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
From Atores
	Where Genero = 'M'

-- Resolução da Atividade 9

Select
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
From Atores
	Where Genero = 'F'
	Order  By PrimeiroNome ASC -- caso não omitido

	--OU

Select
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
From Atores
	Where Genero = 'F'
	Order By PrimeiroNome -- caso omitido

-- Resolução da Atividade 10

Select
	Nome,
	Genero
From FilmesGenero
	Inner Join Filmes ON FilmesGenero.IdFilme = Filmes.Id
	Inner Join Generos ON FilmesGenero.IdGenero = Generos.Id

-- Resolução da Atividade 11

Select
	Nome,
	Genero
From FilmesGenero
	Inner Join Filmes ON FilmesGenero.IdFilme = Filmes.Id
	Inner Join Generos ON FilmesGenero.IdGenero = Generos.Id
	Where Genero = 'Mistério'

-- Resolução da Atividade 12

Select
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
From ElencoFilme
	Inner Join Filmes ON ElencoFilme.IdFilme = Filmes.Id
	Inner Join Atores ON ElencoFilme.IdAtor = Atores.Id

 -- Comentário Extra da Atividade 12
 --		>> Nesta ultima atividade eu faria da Seguinte Maneira de acordo com alguns contextos diferentes:
 
Select
	Nome,
	(PrimeiroNome + ' ' + UltimoNome) Ator, -- Usaria uma coluna somente para referencia de atores
	Papel
From ElencoFilme
	Inner Join Filmes ON ElencoFilme.IdFilme = Filmes.Id
	Inner Join Atores ON ElencoFilme.IdAtor = Atores.Id

	--Ou nos padrões de diretiva de Pessoas no EUA

Select
	Nome,
	(Upper(UltimoNome) + ', ' + PrimeiroNome) 'Ator / Atriz', -- Seguindo os padrões de diretiva dos EUA (Sobrenome[Ultimo Nome] + Nome)
	Papel
From ElencoFilme
	Inner Join Filmes ON ElencoFilme.IdFilme = Filmes.Id
	Inner Join Atores ON ElencoFilme.IdAtor = Atores.Id