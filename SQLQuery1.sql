-- Verifica si la tabla Alumno ya existe y la elimina
IF OBJECT_ID('Alumno', 'U') IS NOT NULL
BEGIN
    DROP TABLE Alumno;
END;
GO

-- Crea la tabla Alumno
CREATE TABLE Alumno (
    Id INT PRIMARY KEY ,
    Nombres NVARCHAR(50) NOT NULL,
    Apellidos NVARCHAR(50) NOT NULL,
    Carnet NVARCHAR(20) NOT NULL,
    Telefono NVARCHAR(20),
    IdCarrera INT NOT NULL
 
);
GO
