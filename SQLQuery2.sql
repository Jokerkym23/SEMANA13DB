-- Inserta datos de ejemplo en la tabla Alumno
INSERT INTO Alumno (Nombres, Apellidos, Carnet, Telefono, IdCarrera, NombreCarrera)
VALUES 
('Juan', 'Pérez', 'C12345', '555-1234', 1, 'Ingeniería en Sistemas'),
('Ana', 'García', 'C12346', '555-5678', 2, 'Medicina'),
('Carlos', 'López', 'C12347', '555-8765', 3, 'Derecho'),
('María', 'Fernández', 'C12348', '555-4321', 1, 'Ingeniería en Sistemas'),
('Luis', 'Martínez', 'C12349', '555-6789', 4, 'Arquitectura');
GO



select * from Alumno 

SELECT a.id, a.nombres, a.apellidos, a.carnet, a.telefono, a.idCarrera, c.nombre as nombreCarrera 
FROM Alumno a JOIN Carrera c ON a.idCarrera = c.id