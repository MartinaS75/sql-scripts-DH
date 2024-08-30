CREATE TABLE dbo.c_games (
	ColumnName NVARCHAR(255) PRIMARY KEY,
	DataType NVARCHAR(50) NOT NULL,
	Description NVARCHAR(255) NULL
);


INSERT INTO dbo.c_games (ColumnName, DataType, Description)
VALUES
	('GameID','INT','Primární klíè, automatické ID'),
	('Name','NVARCHAR(255)','Název hry'),
	('Description','TEXT','Popis hry'),
	('MinPlayers','INT','Minimální poèet hráèù'),
	('MaxPlayers','INT','Maximální poèet hráèù'),
	('PlayTime','INT','Prùmìrný èas hry v minutách'),
	('Age','INT','Doporuèený vìk hráèù'),
	('YearPublished','INT','Rok vydání'),
	('Publisher','NVARCHAR(255)','Vydavatel hry'),
	('DesignerID','INT','Cizí klíè na designers (návrháøi)');

