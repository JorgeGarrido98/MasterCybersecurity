--Ejercicio 1 -> Escribe una consulta que recupere los Vuelos (flights) y su identificador que figuren con status On Time.
select flight_no as Vuelos, flight_id as Identificador_del_vuelo
from flights
where status = 'On Time';
--------------------------------------------------------------------------------------------------
--Ejercicio 2 -> Escribe una consulta que extraiga todas las columnas de la tabla bookings y refleje todas las reservas que han supuesto una cantidad totSELECTal mayor a 1.000.000 (Unidades monetarias).
select * 
from bookings
where total_amount > 1000000;
--------------------------------------------------------------------------------------------------
--Ejercicio 3 -> Escribe una consulta que extraiga todas las columnas de los datos de los modelos de aviones disponibles (aircraft_data).
select * 
from aircrafts_data;
--------------------------------------------------------------------------------------------------
--Ejercicio 4 -> Con el resultado anterior visualizado previamente, escribe una consulta que extraiga los identificadores de vuelo que han volado con un Boeing 737. (Código Modelo Avión = 733)
select flight_no as Vuelos, flight_id as Identificador_del_vuelo
from flights
where aircraft_code = '733';
--------------------------------------------------------------------------------------------------
--Ejercicio 5 -> Escribe una consulta que te muestre la información detallada de los tickets que han comprado las personas que se llaman Irina.
select *
from tickets
where passenger_name like 'IRINA%';