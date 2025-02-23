-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Alexander García >
-- Create date: <22-2-25>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE usp_cuentas_editar
(
@CodigoCuenta int,
@CodigoCliente int,
@NumeroCuenta varchar(50),
@TipoCuenta varchar(50),
@Saldo decimal(10,2),
@FechaApertura datetime,
@Estado varchar(15)
)
AS
BEGIN
	
	SET NOCOUNT ON;

	update tbl_cuentas
	set
	CodigoCliente = @CodigoCliente,
	NumeroCuenta = @CodigoCuenta,
	TipoCuenta = @TipoCuenta,
	Saldo = @Saldo,
	FechaApertura = @FechaApertura,
	Estado = @Estado
	where CodigoCuenta = @CodigoCuenta

END
GO

select * from tbl_cuentas;
