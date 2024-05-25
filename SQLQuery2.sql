-- Inserta datos de ejemplo en la tabla Alumno
INSERT INTO Alumno (Nombres, Apellidos, Carnet, Telefono, IdCarrera, NombreCarrera)
VALUES 
('Juan', 'P�rez', 'C12345', '555-1234', 1, 'Ingenier�a en Sistemas'),
('Ana', 'Garc�a', 'C12346', '555-5678', 2, 'Medicina'),
('Carlos', 'L�pez', 'C12347', '555-8765', 3, 'Derecho'),
('Mar�a', 'Fern�ndez', 'C12348', '555-4321', 1, 'Ingenier�a en Sistemas'),
('Luis', 'Mart�nez', 'C12349', '555-6789', 4, 'Arquitectura');
GO



select * from Alumno 

SELECT a.id, a.nombres, a.apellidos, a.carnet, a.telefono, a.idCarrera, c.nombre as nombreCarrera 
FROM Alumno a JOIN Carrera c ON a.idCarrera = c.id