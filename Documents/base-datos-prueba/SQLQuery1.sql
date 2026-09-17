-- 1. Crear una base de datos de prueba
CREATE DATABASE ProyectoPrueba;
GO

-- 2. Usar la base de datos recién creada
USE ProyectoPrueba;
GO

-- 3. Crear una tabla simple (Ejemplo: Alumnos)
CREATE TABLE Alumnos (
    IdAlumno INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Correo VARCHAR(100),
    FechaRegistro DATETIME DEFAULT GETDATE()
);
GO

-- 4. Insertar datos de prueba
INSERT INTO Alumnos (Nombre, Correo) VALUES 
('Ana Pérez', 'ana.perez@universidad.edu'),
('Carlos Gómez', 'carlos.gomez@universidad.edu'),
('María Rodríguez', 'maria.rodriguez@universidad.edu');
GO

-- 5. Consultar los datos insertados
SELECT * FROM Alumnos;
GO

-- 6. Eliminar un dato de prueba (por ejemplo, el alumno con Id 3)
DELETE FROM Alumnos WHERE IdAlumno = 3;
GO

-- 7. Volver a consultar para verificar que se eliminó correctamente
SELECT * FROM Alumnos;
GO