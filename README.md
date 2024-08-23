# prestamos_finacieros
Caso Practico: Prestamos Financieros
# Entregables

Modelo E/R:
![Diagrama E-R](https://github.com/user-attachments/assets/2c72759e-a2d5-4df5-8598-63c4c9ad62dc)



Modelo Lógico:

![image](https://github.com/user-attachments/assets/ce8a4925-5b8e-4d8f-9c92-249441bd6315)


Detalle/Justificación del modelo de datos propuesto donde considere necesario

Se ha diseñado un pequeño modelo de datos para registrar prestamos financieros, primeramente se registran los clientes los cuales pueden ser de 2 tipos personas naturales o jurdicos por lo que se crean 2 tablas adicionales(personas_juridicas y personas_naturales) y se relacionan con la tabla cliente a traves del campo persona_id.

Seguimente se crean las tablas prestamos, detalle_cuotas y finalmente la tabla pagos. En la tabla prestamos registramos las caracteristicas del prestamo, tales como el monto, la modalidad, tasa de interes, plazo entre otros, se ntiende que un mismo cliente puede tener uno o mas prestamos. En la tabla detalle de cuotas se registra el calendario de pago de cada prestamo que incluye el numero de cuota, el monto de la cuota y la fecha de vencimiento y el estado de dicha cuota. Finalmente se tiene una tabla pagos, en la cual se registran los pagos que va realizando el cliente, cada pago esta vinculado a una cuota del prestamo, tambien se vincula al cliente para un mejor control del mismo.

Script de la base de datos
Descargar del siguiente link: https://github.com/kevinrv/prestamos_finacieros/blob/main/Script_pf.sql 

Script con datos: https://github.com/kevinrv/prestamos_finacieros/blob/main/Script_schema_and_data.sql

