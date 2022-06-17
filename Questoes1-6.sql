--1 - Lista de Nome e mensalidade e de todos os cursos, ordenado do mais caro para o mais barato.

SELECT NomeC, MensC
FROM Curso
ORDER BY MensC DESC;

--2 - Nome do(s) curso(s) com maior duração.

SELECT TOP 1 NomeC
FROM Curso
ORDER BY MensC DESC;

--3 - Lista de disciplinas que não precisam de pré requisitos (PreReqD).

SELECT NomeD
FROM Disciplina
WHERE PreReqD IS NULL;

/*
4 - Cidade natal (CidadeP) dos professores. Resultado sem linhas duplicadas.
O resultado deve ser inserido na tabela temporária #TMP_CIDADES.
*/

SELECT DISTINCT CidadeP
INTO #TMP_CIDADES
FROM Professor; 

SELECT *
FROM #TMP_CIDADES;

--5 - Lista com o nome da disciplina e seu respectivo professor. Resultado sem linhas duplicadas. 

SELECT DISTINCT B.NomeD, P.NomeP
FROM (SELECT D.NomeD, G.CodP
FROM Grade G INNER JOIN Disciplina D ON G.CodD = D.CodD) AS B INNER JOIN Professor P ON 
	B.CodP = P.CodP;

--6 - Lista com disciplinas e suas respectivas áreas e quais são os nomes das disciplinas pré requisitos para cursa-las.

SELECT T.NomeD, T.AreaD, D1.NomeD as Requisito
FROM (SELECT D.NomeD, D.AreaD, D.PreReqD 
FROM Disciplina D) AS T LEFT JOIN Disciplina D1 ON T.PreReqD = D1.CodD

