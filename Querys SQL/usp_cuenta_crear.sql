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
-- Author:		<Alexander García>
-- Create date: <22-2-25>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE usp_cuentas_crear
(
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

	insert into tbl_cuentas
	(
	CodigoCliente,
	NumeroCuenta,
	TipoCuenta,
	Saldo,
	FechaApertura,
	Estado
	)values
	(
	@CodigoCliente,
	@NumeroCuenta,
	@TipoCuenta,
	@Saldo,
	@FechaApertura,
	@Estado
	)
   
END
GO

select * from tbl_cuentas;