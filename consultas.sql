-- Ver todos los registros
SELECT *
FROM ventas;

-- Ventas por región
SELECT region,
       SUM(cantidad * precio) AS ventas_totales
FROM ventas
GROUP BY region;

-- Ventas por vendedor
SELECT vendedor,
       SUM(cantidad * precio) AS ventas_totales
FROM ventas
GROUP BY vendedor
ORDER BY ventas_totales DESC;

-- Producto más vendido
SELECT producto,
       SUM(cantidad) AS unidades_vendidas
FROM ventas
GROUP BY producto
ORDER BY unidades_vendidas DESC;

-- Producto con más ingresos
SELECT producto,
       SUM(cantidad * precio) AS ingresos
FROM ventas
GROUP BY producto
ORDER BY ingresos DESC;

-- Ticket promedio
SELECT AVG(cantidad * precio) AS ticket_promedio
FROM ventas;

-- Total de ventas
SELECT COUNT(*) AS total_ventas
FROM ventas;

-- Ventas de la región Norte
SELECT *
FROM ventas
WHERE region = 'Norte';