#Se agregan restricciones de clave foranea para todas las claves. 

alter table producto 
add constraint FK_producto_categoria
foreign key (categoria_id)
references Categoria(id);

alter table stock 
add constraint FK_stock_sucursal
foreign key (sucursal_id)
references Sucursal(id);

alter table stock 
add constraint FK_stock_producto
foreign key (producto_id)
references Producto(id);

alter table orden  
add constraint FK_orden_cliente
foreign key (cliente_id)
references Cliente(id);

alter table orden  
add constraint FK_orden_sucursal
foreign key (sucursal_id)
references Sucursal(id);

alter table item  
add constraint FK_item_orden
foreign key (orden_id)
references Orden(id);

alter table item  
add constraint FK_item_producto
foreign key (producto_id)
references Producto(id);
