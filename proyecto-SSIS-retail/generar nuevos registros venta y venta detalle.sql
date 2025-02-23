
 
 DECLARE @fecha_Registro DATETIME = '2024-01-01';
 
 DECLARE @id_Empleado INT = (SELECT 1 + ABS(CHECKSUM(NEWID())) % 3 AS Numero_Aleatorio);
 DECLARE @id_cliente INT = (SELECT 1 + ABS(CHECKSUM(NEWID())) % 1000 AS Numero_Aleatorio);
  DECLARE @id_producto INT = (SELECT 1 + ABS(CHECKSUM(NEWID())) % 15 AS Numero_Aleatorio);
 DECLARE @Cantidad INT  = (SELECT 1 + ABS(CHECKSUM(NEWID())) % 5 AS Numero_Aleatorio);
 DECLARE @precio_unitario INT,  @Total_venta  INT; 

 DECLARE @transaccion_id INT =( SELECT MAX(transaccion_id) + 1  FROM venta);
 
SELECT @precio_unitario = Precio_Actual,
			@Total_venta = Precio_Actual * @Cantidad
FROM Producto
WHERE Id_Producto = @id_producto;

 
INSERT INTO venta
SELECT  @transaccion_id transaccion_id,
			@id_cliente id_cliente,  
			@id_Empleado id_Empleado, 
			@Total_venta Venta_Total,
			@fecha_Registro fecha_registro

INSERT INTO venta_detalle
SELECT @transaccion_id  transaccion_id,
		@id_producto Id_Producto, 
		@Cantidad Cantidad, 
		@precio_unitario Precio_unitario,
		@Total_venta Total;


SELECT * FROM venta ORDER BY fecha_registro  desc
 select* from venta_detalle where Transaccion_ID= 1006

 select * from Producto
 
 select * from Categoria
