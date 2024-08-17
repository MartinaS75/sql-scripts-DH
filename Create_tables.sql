CREATE TABLE Designers (
    DesignerID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    [Bio] NVARCHAR(MAX) -- Krátký životopis autora, volitelný
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
    Name NVARCHAR(255) -- Název kategorie
);

CREATE TABLE Mechanics (
    MechanicID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(255),
    [DescriptionText] NVARCHAR(255) -- Popis mechaniky
);

CREATE TABLE GameCategories (
    GameID INT,                       -- Cizí klíè na tabulku Games
    CategoryID INT,                  -- Cizí klíè na tabulku Categories
    PRIMARY KEY (GameID, CategoryID), -- Kombinovaný primární klíè (garantuje jedineènost)
    FOREIGN KEY (GameID) REFERENCES Games(GameID),         -- Definice cizího klíèe na tabulku Games
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)  -- Definice cizího klíèe na tabulku Categories
);

CREATE TABLE GameMechanics (
    GameID INT,                        -- Cizí klíè na tabulku Games
    MechanicID INT,                    -- Cizí klíè na tabulku Mechanics
    PRIMARY KEY (GameID, MechanicID), -- Kombinovaný primární klíè (garantuje jedineènost)
    FOREIGN KEY (GameID) REFERENCES Games(GameID),           -- Definice cizího klíèe na tabulku Games
    FOREIGN KEY (MechanicID) REFERENCES Mechanics(MechanicID) -- Definice cizího klíèe na tabulku Mechanics
);


