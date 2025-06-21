--Atividade 01
SELECT Nome, Ano FROM Filmes

--Atividade 02
SELECT Nome, Ano FROM Filmes ORDER BY ano ASC

--Atividade 03
SELECT Nome, Ano, Duracao FROM Filmes Where Nome = 'De Volta para o Futuro' 

--Atividade 04
SELECT Nome, Ano, Duracao FROM Filmes Where Ano = 1997

--Atividade 05
SELECT Nome, Ano, Duracao FROM Filmes Where Ano > 2000

--Atividade 06
SELECT Nome, Ano, Duracao FROM Filmes Where Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC

--Atividade 07
SELECT 
    ano,
    COUNT(*) AS Quantidade
FROM 
    Filmes
GROUP BY 
    ano
ORDER BY 
    Quantidade DESC;

--Atividade 08
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores Where Genero = 'M'

--Atividade 09
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores Where Genero = 'F' ORDER BY PrimeiroNome ASC

--Atividade 10
SELECT 
    f.nome, 
    g.genero 
FROM 
    FilmesGenero fg
JOIN Filmes f ON fg.IdFilme = f.Id
JOIN Generos g ON fg.IdGenero = g.Id;

--Atividade 11
SELECT 
    f.nome, 
    g.genero 
FROM 
    FilmesGenero fg
INNER JOIN Filmes f ON fg.IdFilme = f.Id
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.genero = 'Mistério'; 

--Atividade 12
SELECT 
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	Papel
FROM 
	ElencoFilme ef
INNER JOIN Filmes f ON ef.IdFilme = f.Id
INNER JOIN Atores a ON ef.IdAtor = a.Id
