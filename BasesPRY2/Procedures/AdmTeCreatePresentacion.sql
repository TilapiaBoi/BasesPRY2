﻿CREATE PROCEDURE [dbo].[AdmTeCreatePresentacion]
	@IdProduccion INT,
	@FechaHoraInicio DATETIME,
	@User NVARCHAR(20),
	@Password NVARCHAR(20)
AS
	SET NOCOUNT ON

	DECLARE @IdTeatro INT
	EXEC SisGetTeatro @User, @Password, @IdTeatro OUTPUT

	IF EXISTS
	(
		SELECT 'True'
		FROM Producciones p
		WHERE p.Id = @IdProduccion AND p.IdEstado NOT IN 
		(
			SELECT e.Id
			FROM Estados e
			WHERE e.Nombre IN ('Cancelada', 'Concluida')
		)
	) AND
	(
		SELECT p.IdTeatro
		FROM Producciones p
		WHERE p.Id = @IdProduccion
	) = @IdTeatro 
	BEGIN
		INSERT INTO Presentaciones (FechaHoraInicio, IdProduccion)
		VALUES (@FechaHoraInicio, @IdProduccion)
	END

	ELSE
	BEGIN;
		THROW 51000, '[CustomError] El estado de la produccion no permite agregar presentaciones', 1
	END
GO
