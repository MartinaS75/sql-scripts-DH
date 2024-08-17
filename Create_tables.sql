CREATE TABLE Designers (
    DesignerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    [Bio] NVARCHAR(MAX) -- Kr�tk� �ivotopis autora, voliteln�
);

CREATE TABLE Games (
    GameID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) NOT NULL,
    [Description] NVARCHAR(MAX), -- Popis hry
    MinPlayers INT NOT NULL,
    MaxPlayers INT NOT NULL,
    Playtime INT NOT NULL,
    Age INT NOT NULL,
    YearPublished INT,
    Publisher NVARCHAR(255),
    DesignerID INT,
    FOREIGN KEY (DesignerID) REFERENCES Designers(DesignerID)
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255) -- N�zev kategorie
);

CREATE TABLE Mechanics (
    MechanicID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255),
    [DescriptionText] NVARCHAR(255) -- Popis mechaniky
);

CREATE TABLE GameCategories (
    GameID INT,                       -- Ciz� kl�� na tabulku Games
    CategoryID INT,                  -- Ciz� kl�� na tabulku Categories
    PRIMARY KEY (GameID, CategoryID), -- Kombinovan� prim�rn� kl�� (garantuje jedine�nost)
    FOREIGN KEY (GameID) REFERENCES Games(GameID),         -- Definice ciz�ho kl��e na tabulku Games
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)  -- Definice ciz�ho kl��e na tabulku Categories
);

CREATE TABLE GameMechanics (
    GameID INT,                        -- Ciz� kl�� na tabulku Games
    MechanicID INT,                    -- Ciz� kl�� na tabulku Mechanics
    PRIMARY KEY (GameID, MechanicID), -- Kombinovan� prim�rn� kl�� (garantuje jedine�nost)
    FOREIGN KEY (GameID) REFERENCES Games(GameID),           -- Definice ciz�ho kl��e na tabulku Games
    FOREIGN KEY (MechanicID) REFERENCES Mechanics(MechanicID) -- Definice ciz�ho kl��e na tabulku Mechanics
);


