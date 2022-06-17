INSERT INTO Curso(CodC, NomeC, DuracaoC, MensC)
VALUES
('C1','Análise Sist',4,400),
('C2','Eng Mecatrônica',5,600),
('C3','Ciência Comp',4,450),
('C4','Eng Elétrica',4,600),
('C5','Turismo',3,350)

INSERT INTO Professor(CodP, NomeP, CidadeP, TituloP)
VALUES
('P1','Joaquim','Rib Preto','Mestre'),
('P2','Paulo','Batatais','Espec'),
('P3','André','Rib Preto','Doutor'),
('P4','Gil','S Carlos','Doutor'),
('P5','Juliana','S Calor','Pós Dout')

INSERT INTO Disciplina(CodD, NomeD, CargaD,AreaD,PreReqD)
VALUES
('D1','TLP1',2,'Computação','D2'),
('D2','Cálculo 1',4,'Matemática',''),
('D3','Inglês',2,'Humanas',''),
('D4','Ed Física',3,'Saúde',''),
('D5','G Analítica',5,'Matemática','D2'),
('D6','Projeto Final',6,'','D1')

UPDATE Disciplina
SET PreReqD = NULL
WHERE PreReqD = ''

SELECT *
FROM grade

UPDATE Disciplina
SET AreaD = NULL
WHERE AreaD = ''

INSERT INTO Grade(CodC,CodD,CodP,Sala)
VALUES
('C1','D6','P1',305),
('C2','D2','P2',305),
('C3','D2','P2',305),
('C4','D1','P4',201),
('C4','D3','P3',204),
('C5','D4','P3',204),
('C5','D4','P4',207)