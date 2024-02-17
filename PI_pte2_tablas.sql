CREATE TABLE Categoria(
	ID INTEGER PRIMARY KEY NOT NULL,
	nombre TEXT
);
CREATE TABLE Producto(
	ID INTEGER PRIMARY KEY NOT NULL,
	nombre TEXT,
	marca TEXT,
	categoria_id INT references Categoria(ID), 
	precio_unitario REAL
);
CREATE TABLE Sucursal(
	ID INTEGER PRIMARY KEY NOT NULL,
	nombre TEXT
	direccion TEXT
);
CREATE TABLE Stock(
	ID INTEGER PRIMARY KEY NOT NULL,
	sucursal_id INT NOT NULL references Sucursal(ID),
	producto_id INT NOT NULL references Producto(ID),
	cantidad INT,
	UNIQUE(sucursal_id, producto_id)
);
CREATE TABLE Cliente(
	ID INTEGER PRIMARY KEY NOT NULL,
	nombre TEXT,
	telefono TEXT
);
CREATE TABLE Orden(
	ID INTEGER PRIMARY KEY NOT NULL,
	cliente_id INT references Cliente(ID),
	sucursal_id INT references Sucursal(ID),
	fecha TEXT,
	total REAL
);
CREATE TABLE Item(
	ID INTEGER PRIMARY KEY NOT NULL,
	orden_id INT references Orden(ID),
	producto_id INT references Producto(ID),
	cantidad INT,
	monto_venta REAL
);