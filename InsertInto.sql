INSERT INTO Curso(CodC, NomeC, DuracaoC, MensC)
VALUES
('C1','An�lise Sist',4,400),
('C2','Eng Mecatr�nica',5,600),
('C3','Ci�ncia Comp',4,450),
('C4','Eng El�trica',4,600),
('C5','Turismo',3,350)

INSERT INTO Professor(CodP, NomeP, CidadeP, TituloP)
VALUES
('P1','Joaquim','Rib Preto','Mestre'),
('P2','Paulo','Batatais','Espec'),
('P3','Andr�','Rib Preto','Doutor'),
('P4','Gil','S Carlos','Doutor'),
('P5','Juliana','S Calor','P�s Dout')

INSERT INTO Disciplina(CodD, NomeD, CargaD,AreaD,PreReqD)
VALUES
('D1','TLP1',2,'Computa��o','D2'),
('D2','C�lculo 1',4,'Matem�tica',''),
('D3','Ingl�s',2,'Humanas',''),
('D4','Ed F�sica',3,'Sa�de',''),
('D5','G Anal�tica',5,'Matem�tica','D2'),
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