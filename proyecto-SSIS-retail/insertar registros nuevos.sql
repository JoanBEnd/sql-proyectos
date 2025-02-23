BEGIN TRAN



insert into Cliente
values(1007, 'Rodrigo', 'Soreau', 'Male', 28)

select * from Retail_ventasDM.dbo.dim_Cliente order by 1 desc
 insert into Producto	
 values(17, 1, 'Jabon', 7)
select * from Retail_ventasDM.dbo.Dim_Producto order by 1 desc

 insert into Empleado
 values(5, 'Richard', 'Silva', 'Vendedor')
 
select * from Retail_ventasDM.dbo.dim_empleado order by 1 desc
ROLLBACK

select * from Retail_ventasDM.dbo.H_Ventas
select * from Retail_ventasDM.dbo.Dim_Tiempo