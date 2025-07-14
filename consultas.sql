--1 Primeira consulta
Select nome,ano from filmes;
--2 Segunda consulta 
Select Nome,Ano,Duracao from filmes order by ano asc;
--3 Terceira consulta
select Nome, ano, Duracao from Filmes Where Nome like 'De Volta para o Futuro';
--4 Quarta consulta
Select nome,ano,Duracao From Filmes Where ano = 1997;
--5 Quinta consulta
Select Nome, ano, Duracao From Filmes Where ano > 2000;
--6 Sexta consulta
Select Nome, Ano,Duracao From Filmes Where Duracao > 100 AND Duracao < 150 Order By Duracao ASC;
--7 Sétima consulta
Select Ano , Count(*) as Quantidade from Filmes  Group By Ano Order by MAX(Duracao) desc;
--8 Oitava consulta
Select Id,PrimeiroNome, UltimoNome, Genero from Atores Where Genero like 'M';
--9 Nona consulta
Select PrimeiroNome, UltimoNome, Genero From Atores Where Genero like 'F' Order by PrimeiroNome;
--10 Décima consulta
Select Nome ,Genero from Filmes Inner Join FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
Inner Join Generos ON FilmesGenero.IdGenero = Generos.Id;
--11 Décima primeira consulta
Select Nome,Genero From Filmes Inner Join Generos On Genero like 'Mistério' Inner Join FilmesGenero On
FilmesGenero.id = Generos.id;
--12 Décima segunda consulta
Select Filmes.Nome,Atores.PrimeiroNome,Atores.UltimoNome,ElencoFilme.Papel from Filmes Inner Join ElencoFilme ON
ElencoFilme.IdFilme = Filmes.Id Inner Join Atores On ElencoFilme.IdAtor = Atores.Id;