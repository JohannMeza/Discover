ALTER TABLE empleado 
ADD CONSTRAINT PK_empleado 
PRIMARY KEY empleado (codEmpleado);


ALTER TABLE pedido 
ADD CONSTRAINT PK_pedido
PRIMARY KEY pedido (NroPedido);


ALTER TABLE cliente 
ADD CONSTRAINT PK_cliente
PRIMARY KEY cliente (codCliente);


ALTER TABLE producto 
ADD CONSTRAINT PK_producto
PRIMARY KEY producto (codProducto);




ALTER TABLE pedido 
ADD CONSTRAINT FK_pedido_empleado 
FOREIGN KEY pedido (codEmpleado)
REFERENCES empleado (codEmpleado);

ALTER TABLE pedido 
ADD CONSTRAINT FK_pedido_cliente
FOREIGN KEY pedido (codCliente)
REFERENCES cliente (codCliente); 

ALTER TABLE detallePedido 
ADD CONSTRAINT FK_detallePedido_pedido
FOREIGN KEY detallePedido (NroPedido)
REFERENCES pedido (NroPedido); 

ALTER TABLE detallePedido 
ADD CONSTRAINT FK_detallePedido_producto
FOREIGN KEY detallePedido(codProducto)
REFERENCES producto (codProducto); 