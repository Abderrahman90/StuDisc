﻿CREATE TABLE [dbo].[Utilisateur] (
[idUtilisateur] INT IDENTITY (1, 1) NOT NULL,
[nom] VARCHAR (50) NOT NULL,
[prenom] VARCHAR (50) NOT NULL,
[email] VARCHAR (50) NOT NULL,
[mdp] VARCHAR (50) NOT NULL,
[role] VARCHAR (50) NOT NULL,
PRIMARY KEY CLUSTERED ([idUtilisateur] ASC)
);



CREATE TABLE [dbo].[UtilisateurThematique] (
[IdUT] INT IDENTITY (1, 1) NOT NULL,
[idUtilisateur] INT NOT NULL,
[idThematique] INT NOT NULL,
PRIMARY KEY CLUSTERED ([IdUT] ASC)
);



CREATE TABLE [dbo].[Thematique] (
[idThematique] INT IDENTITY (1, 1) NOT NULL,
[titre] VARCHAR (50) NOT NULL,
[date] DATETIME NOT NULL,
[idUtilisateur] int
PRIMARY KEY CLUSTERED ([idThematique] ASC)
);




CREATE TABLE [dbo].[Publication] (
[idPublication] INT IDENTITY (1, 1) NOT NULL,
[date] DATETIME NOT NULL,
[corps] VARCHAR NOT NULL,
[idUtilisateur] int NOT NULL,
[idThematique] int NOT NULL,
PRIMARY KEY CLUSTERED ([idPublication] ASC)
);