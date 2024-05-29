/*
	Nome: Jo�o Pedro Gabriel
	Github: github.com/JOAOPEDROGABRIEL
*/

-- Resolu��o das Atividades Propostas em https://github.com/digitalinnovationone/trilha-net-banco-de-dados-desafio/

-- Resolu��o da Atividade 1
Select
	Nome,
	Ano
From Filmes

-- Resolu��o da Atividade 2

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Order By Ano ASC -- caso n�o omitido

	--OU

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Order By Ano -- caso omitido

-- Resolu��o da Atividade 3

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Where Nome = 'De Volta para o Futuro'

-- Resolu��o da Atividade 4

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Where Ano Like '1997'

-- Resolu��o da Atividade 5

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

-- Resolu��o da Atividade 6

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Where Duracao > 100 AND Duracao < 150
	Order By Duracao ASC -- caso n�o omitido

	--OU

Select
	Nome,
	Ano,
	Duracao
From Filmes
	Where Duracao > 100 AND Duracao < 150
	Order By Duracao -- caso omitido

-- Resolu��o da Atividade 7

Select
	Ano,
	Count(Ano) Quantidade
From Filmes
	Group By Ano
	Order By Count(Ano) DESC

-- Resolu��o da Atividade 8

Select
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
From Atores
	Where Genero = 'M'

-- Resolu��o da Atividade 9

Select
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
From Atores
	Where Genero = 'F'
	Order  By PrimeiroNome ASC -- caso n�o omitido

	--OU

Select
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
From Atores
	Where Genero = 'F'
	Order By PrimeiroNome -- caso omitido

-- Resolu��o da Atividade 10

Select
	Nome,
	Genero
From FilmesGenero
	Inner Join Filmes ON FilmesGenero.IdFilme = Filmes.Id
	Inner Join Generos ON FilmesGenero.IdGenero = Generos.Id

-- Resolu��o da Atividade 11

Select
	Nome,
	Genero
From FilmesGenero
	Inner Join Filmes ON FilmesGenero.IdFilme = Filmes.Id
	Inner Join Generos ON FilmesGenero.IdGenero = Generos.Id
	Where Genero = 'Mist�rio'

-- Resolu��o da Atividade 12

Select
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
From ElencoFilme
	Inner Join Filmes ON ElencoFilme.IdFilme = Filmes.Id
	Inner Join Atores ON ElencoFilme.IdAtor = Atores.Id

 -- Coment�rio Extra da Atividade 12
 --		>> Nesta ultima atividade eu faria da Seguinte Maneira de acordo com alguns contextos diferentes:
 
Select
	Nome,
	(PrimeiroNome + ' ' + UltimoNome) Ator, -- Usaria uma coluna somente para referencia de atores
	Papel
From ElencoFilme
	Inner Join Filmes ON ElencoFilme.IdFilme = Filmes.Id
	Inner Join Atores ON ElencoFilme.IdAtor = Atores.Id

	--Ou nos padr�es de diretiva de Pessoas no EUA

Select
	Nome,
	(Upper(UltimoNome) + ', ' + PrimeiroNome) 'Ator / Atriz', -- Seguindo os padr�es de diretiva dos EUA (Sobrenome[Ultimo Nome] + Nome)
	Papel
From ElencoFilme
	Inner Join Filmes ON ElencoFilme.IdFilme = Filmes.Id
	Inner Join Atores ON ElencoFilme.IdAtor = Atores.Id