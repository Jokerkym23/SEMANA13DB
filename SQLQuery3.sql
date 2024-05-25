-- Verifica si la tabla Carrera ya existe y la elimina
IF OBJECT_ID('Carrera', 'U') IS NOT NULL
BEGIN
    DROP TABLE Carrera;
END;
GO

-- Crea la tabla Carrera
CREATE TABLE Carrera (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL
);
GO
