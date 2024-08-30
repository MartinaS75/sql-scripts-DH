CREATE TABLE dbo.c_games (
	ColumnName NVARCHAR(255) PRIMARY KEY,
	DataType NVARCHAR(50) NOT NULL,
	Description NVARCHAR(255) NULL
);


INSERT INTO dbo.c_games (ColumnName, DataType, Description)
VALUES
	('GameID','INT','Prim�rn� kl��, automatick� ID'),
	('Name','NVARCHAR(255)','N�zev hry'),
	('Description','TEXT','Popis hry'),
	('MinPlayers','INT','Minim�ln� po�et hr���'),
	('MaxPlayers','INT','Maxim�ln� po�et hr���'),
	('PlayTime','INT','Pr�m�rn� �as hry v minut�ch'),
	('Age','INT','Doporu�en� v�k hr���'),
	('YearPublished','INT','Rok vyd�n�'),
	('Publisher','NVARCHAR(255)','Vydavatel hry'),
	('DesignerID','INT','Ciz� kl�� na designers (n�vrh��i)');

