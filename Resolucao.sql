Objetivo
Você deverá criar diversas consultas, com o objetivo de retornar os dados a seguir. Abaixo de cada pedido tem o retorno esperado. O seu retorno deve ser igual ao da imagem.

1 - Buscar o nome e ano dos filmes

SELECT nome, ano
FROM filmes


2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT nome, ano
FROM filmes
ORDER BY ano

3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro'

4 - Buscar os filmes lançados em 1997

SELECT nome, ano
FROM filmes
WHERE ano = 1997

5 - Buscar os filmes lançados APÓS o ano 2000

SELECT nome, ano
FROM filmes
WHERE ano > 2000

6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT nome, duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao DESC

7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT ano, COUNT(*) AS qtd_filmes
FROM filmes
GROUP BY ano
ORDER BY qtd_filmes DESC

8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'Masculino'

9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

SELECT PrimeiroNome, UltimoNome
FROM atores
WHERE genero = 'Feminino'
ORDER BY UltimoNome

10 - Buscar o nome do filme e o gênero

SELECT nome, genero
FROM filmes

11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT nome, genero
FROM filmes
WHERE genero = 'Mistério'
ORDER BY nome DESC


12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT filmes.nome, atores.PrimeiroNome, atores.UltimoNome, atores.papel
FROM filmes
INNER JOIN atuacoes ON filmes.id = atuacoes.id_filme
INNER JOIN atores ON atuacoes.id_ator = atores.id
