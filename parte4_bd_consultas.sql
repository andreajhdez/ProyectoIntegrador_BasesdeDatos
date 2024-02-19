#Obtener el precio mínimo, precio máximo y precio promedio de todos los productos.
select MIN(precio_unitario) as precio_minimo, MAX(precio_unitario) as precio_maximo, AVG(precio_unitario) as precio_promedio from producto;

#Calcular la cantidad total de productos en stock por sucursal.
select sucursal_id, sum(cantidad) as cantidad_stock_sucursal 
from stock 
group by sucursal_id 
order by sucursal_id asc ;

#Obtener el total de ventas por cliente.
select cliente_id, count(cliente_id) as num_ventas_cliente, sum(total) as total_ventas_cliente
from orden 
group by cliente_id 
order by cliente_id asc;