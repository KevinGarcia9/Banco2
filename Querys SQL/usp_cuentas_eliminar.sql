
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE usp_cuentas_eliminar
(
@CodigoCuenta int
)
AS
BEGIN
	
	SET NOCOUNT ON;

	delete tbl_cuentas
	where CodigoCuenta = @CodigoCuenta

END
GO
