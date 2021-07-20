CREATE TABLE empleado (
	codEmpleado VARCHAR(10) NOT NULL,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (60) NOT NULL,
    dni INT (8) NOT NULL,
    direccion VARCHAR (120) NOT NULL,
    telefono VARCHAR (9) NOT NULL,
    cargo VARCHAR (20) NOT NULL,
    usuario VARCHAR (50) NOT NULL,
    contraseña VARCHAR (40) NOT NULL 
)ENGINE = InnoDB;


CREATE TABLE pedido (
	NroPedido INT NOT NULL,
    fecha DATE NOT NULL,
    montoTotal DECIMAL (5,2) NOT NULL,
    codEmpleado VARCHAR (10) NOT NULL,
    codCliente VARCHAR (10) NOT NULL
)ENGINE = InnoDB;


CREATE TABLE detallePedido (
	item INT NOT NULL,
    NroPedido INT NOT NULL,
    cantidad INT NOT NULL,
    precioVenta DECIMAL (5,2) NOT NULL,
    codProducto VARCHAR (10) NOT NULL
)ENGINE = InnoDB;


CREATE TABLE cliente (
	codCliente VARCHAR(10) NOT NULL,
    nombre VARCHAR (50) NOT NULL,
    apellido VARCHAR (60) NOT NULL,
    dni INT NOT NULL,
    direccion VARCHAR (120) NOT NULL
)ENGINE = InnoDB;

CREATE TABLE producto (
	codProducto VARCHAR (10) NOT NULL,
    precioVenta DECIMAL (5,2) NOT NULL,
    lugar VARCHAR (50) NOT NULL,
	stock INT NOT NULL,
    precioVentaMin DECIMAL (5,2) NOT NULL
)