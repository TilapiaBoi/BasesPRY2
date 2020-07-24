﻿CREATE PROCEDURE [dbo].[SisLoginAgent]
	@AdminLogin nvarchar (20),
	@password nvarchar (20)
WITH EXECUTE AS OWNER
AS
	IF (EXISTS (SELECT 'True'
				FROM Empleados
				WHERE Empleados.Tipo = 2
				AND Empleados.Usuario = @AdminLogin
				AND Empleados.Contrasena = @password))
	BEGIN
		IF (ORIGINAL_LOGIN() = 'ApplicationLogin1')
		BEGIN
			ALTER ROLE TheaterAgent ADD MEMBER ApplicationUser1
			DENY ALTER ON ROLE::TheaterAgent TO ApplicationUser1
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser1
			RETURN 1
		END
		ELSE IF (ORIGINAL_LOGIN() = 'ApplicationLogin2')
		BEGIN
			ALTER ROLE TheaterAgent ADD MEMBER ApplicationUser2
			DENY ALTER ON ROLE::TheaterAgent TO ApplicationUser2
			ALTER ROLE InitialRole DROP MEMBER ApplicationUser2
			RETURN 1
		END
		ELSE
		BEGIN
			RETURN 0
		END
	END
	ELSE
	BEGIN
		RETURN 0
END

