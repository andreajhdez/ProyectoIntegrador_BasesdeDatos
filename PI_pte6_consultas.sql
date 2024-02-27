# Calcular el precio promedio de los productos en cada categoría
SELECT avg(producto.precio_unitario) as precio_promedio, categoria.nombre as categoria
FROM producto
INNER JOIN categoria
ON producto.categoria_id = categoria.id
group by categoria.nombre;

# Obtener la cantidad total de productos en stock por categoría
select sum(stock.cantidad) as cantidad_en_stock, categoria.nombre as categoria
from producto 
join categoria on producto.categoria_id  = categoria.id 
join stock on producto.id = stock.producto_id 
group by categoria.nombre;

# Calcular el total de ventas por sucursal
SELECT sucursal.nombre as sucursal, sum(orden.total) as monto_total_ventas, count(orden.total) as cantidad_ventas
FROM orden  
INNER JOIN sucursal  
ON orden.sucursal_id = sucursal.id 
group by sucursal.nombre
order by sucursal.nombre asc;

#Obtener el cliente que ha realizado el mayor monto de compras
select sum(orden.total) as total_compras, cliente.nombre as nombre_cliente
from orden 
inner join cliente
on orden.cliente_id = cliente.id 
group by cliente.nombre
order by total_compras desc
limit 1;

