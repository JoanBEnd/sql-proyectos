
CREATE TABLE Cliente(
Id_Cliente int NOT NULL PRIMARY KEY,
Nombre varchar(200) ,
Apellido varchar(200) ,
Genero varchar(30),
Edad TINYINT  CHECK(Edad Between 0 AND 120)
)

CREATE INDEX idx_cliente_nombre ON Cliente(Nombre);
CREATE INDEX idx_cliente_apellido ON Cliente(Apellido);
 
 CREATE TABLE Categoria(
 id_Categoria int NOT NULL PRIMARY KEY,
 Categoria varchar(180) NOT NULL
 )
 
CREATE INDEX idx_categoria_categoria ON Categoria(Categoria);




CREATE TABLE Producto(
Id_Producto int NOT NULL PRIMARY KEY,
Id_Categoria int NOT NULL,
Producto varchar(180) NOT NULL,
Precio_Actual DECIMAL(10,2),
FOREIGN KEY (Id_Categoria) REFERENCES Categoria(Id_Categoria)
)

CREATE INDEX idx_producto_Idcategoria ON Producto(Id_Categoria);
CREATE INDEX idx_producto_producto ON Producto(Producto);
 

create table venta(
Transaccion_ID int not null PRIMARY KEY,
 Id_Cliente  int not null,
 Id_Empleado int not null,
Venta_Total decimal(10, 2),
fecha_registro datetime
FOREIGN KEY (Id_Cliente) REFERENCES Cliente(Id_Cliente)
FOREIGN KEY (Id_Empleado) REFERENCES Empleado(Id_Empleado)
)

CREATE INDEX IDX_Venta_IdCliente ON Venta(Id_Cliente);
CREATE INDEX IDX_Venta_IdEmpleado ON Venta(Id_Empleado);

create table venta_detalle(
Transaccion_ID  int not null,
Id_Producto int not null,
Cantidad int not null,
Precio_unitario  decimal(10,2) not null,
Total decimal(10,2)
FOREIGN KEY (Transaccion_ID) REFERENCES venta(Transaccion_ID),
FOREIGN KEY (Id_Producto) REFERENCES producto(Id_Producto),
)
CREATE INDEX IDX_Venta_Detalle_TransaccionId ON venta_detalle(Transaccion_ID);
CREATE INDEX IDX_Venta_Detalle_IdProducto ON venta_detalle(Id_Producto);
 
    
 create TABLE Empleado(
 id_Empleado int PRIMARY KEY NOT NULL,
 Nombre  varchar(120)  NOT NULL,
 Apellido varchar(120)  NOT NULL,
 Cargo  varchar(100)  NOT NULL
 )
 
CREATE INDEX idx_empleado_nombre ON Empleado(Nombre);
CREATE INDEX idx_empleado_apellido ON Empleado(Apellido);


