CREATE TABLE [Utilizatori] (
  [id] integer PRIMARY KEY,
  [Nume] nvarchar(255),
  [Prenume] nvarchar(255),
  [Email] nvarchar(255),
  [Parola] nvarchar(255),
  [Telefon] nvarchar(255),
  [Judet] nvarchar(255),
  [Localitate] nvarchar(255),
  [Strada] nvarchar(255),
  [Numar] nvarchar(255),
  [Bloc] nvarchar(255),
  [Scara] nvarchar(255),
  [Etaj] nvarchar(255),
  [Apartament] nvarchar(255)
)
GO
 
CREATE TABLE [Calatori] (
  [id] integer PRIMARY KEY,
  [idUtilizator] nvarchar(255),
  [status] bit
)
GO
 
CREATE TABLE [Controlori] (
  [id] integer PRIMARY KEY,
  [idUtilizator] nvarchar(255),
  [status] bit
)
GO
 
CREATE TABLE [Soferi] (
  [id] integer PRIMARY KEY,
  [idUtilizator] nvarchar(255),
  [status] bit
)
GO
 
CREATE TABLE [Administrativ] (
  [id] integer PRIMARY KEY,
  [idUtilizator] nvarchar(255),
  [status] bit
)
GO
 
CREATE TABLE [Autovehicule] (
  [id] integer PRIMARY KEY,
  [nrInmatriculare] nvarchar(255),
  [marca] nvarchar(255),
  [model] nvarchar(255),
  [anulFabricatiei] integer,
  [capacitateLocuriPeScaume] nvarchar(255),
  [capacitateLocuriInPicioare] nvarchar(255),
  [normaPoluare] nvarchar(255)
)
GO
 
CREATE TABLE [Abonamente] (
  [id] integer PRIMARY KEY,
  [tipAbonamente] integer,
  [DataStart] Date,
  [DataStop] Date,
  [idCalator] integer,
  [idCalatorResponsabil] integer
)
GO
 
CREATE TABLE [tipAbonamente] (
  [id] integer PRIMARY KEY,
  [denumire] nvarchar(255),
  [tarif] float,
  [status] bit 
)
GO
 
CREATE TABLE [StatiiAutobuz] (
  [id] integer PRIMARY KEY,
  [denumire] nvarchar(255),
  [statiePrecedenta] integer,
  [statieUrmatoare] integer
)
GO
 
CREATE TABLE [ruteAutovehicul] (
  [id] integer PRIMARY KEY,
  [denumire] nvarchar(255),
  [capatLinie1] integer,
  [capatLinie2] integer,
  [traseu] nvarchar(255)
)
GO
 
CREATE TABLE [Curse] (
  [id] integer PRIMARY KEY,
  [idSofer] integer,
  [idAutovehicul] integer,
  [idRuta] integer,
  [DataStart] timestamp,
  [DataStop] timestamp
)
GO
 
CREATE TABLE [Bilete] (
  [id] integer PRIMARY KEY,
  [codUnicBilet] nvarchar(255),
  [idCalator] integer,
  [idAbonament] integer,
  [idCursa] integer,
  [dataAchizitionare] timestamp,
  [valabilitate] integer
)
GO
 
ALTER TABLE [Calatori] ADD FOREIGN KEY ([idUtilizator]) REFERENCES [Utilizatori] ([id])
GO
 
ALTER TABLE [Controlori] ADD FOREIGN KEY ([idUtilizator]) REFERENCES [Utilizatori] ([id])
GO
 
ALTER TABLE [Soferi] ADD FOREIGN KEY ([idUtilizator]) REFERENCES [Utilizatori] ([id])
GO
 
ALTER TABLE [Administrativ] ADD FOREIGN KEY ([idUtilizator]) REFERENCES [Utilizatori] ([id])
GO
 
ALTER TABLE [Abonamente] ADD FOREIGN KEY ([tipAbonamente]) REFERENCES [tipAbonamente] ([id])
GO
 
ALTER TABLE [Bilete] ADD FOREIGN KEY ([idCalator]) REFERENCES [Calatori] ([id])
GO
 
ALTER TABLE [Bilete] ADD FOREIGN KEY ([idAbonament]) REFERENCES [Abonamente] ([id])
GO
 
ALTER TABLE [Bilete] ADD FOREIGN KEY ([idCursa]) REFERENCES [Curse] ([id])
GO
 
ALTER TABLE [Curse] ADD FOREIGN KEY ([idSofer]) REFERENCES [Soferi] ([id])
GO
 
ALTER TABLE [Curse] ADD FOREIGN KEY ([idAutovehicul]) REFERENCES [Autovehicule] ([id])
GO
 
ALTER TABLE [Curse] ADD FOREIGN KEY ([idRuta]) REFERENCES [ruteAutovehicul] ([id])
GO
 
ALTER TABLE [ruteAutovehicul] ADD FOREIGN KEY ([capatLinie1]) REFERENCES [StatiiAutobuz] ([id])
GO
 
ALTER TABLE [ruteAutovehicul] ADD FOREIGN KEY ([capatLinie2]) REFERENCES [StatiiAutobuz] ([id])
GO
 
