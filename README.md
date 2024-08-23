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

Diccionario de datos - Prestamos financieros

Tabla “personas_naturales”


Columna
Tipo de Dato
Descripción
Restricciones
id
INT
Identificador único de la persona natural.
PRIMARY KEY, NOT NULL
numero_documento
NVARCHAR(20)
Número de documento de identificación (DNI, Pasaporte, etc.).
UNIQUE, NOT NULL
nombres
NVARCHAR(255)
Nombres de la persona natural.
NOT NULL
apellido_paterno
NVARCHAR(255)
Apellido paterno de la persona natural.
NOT NULL
apellido_materno
NVARCHAR(255)
Apellido materno de la persona natural.
NOT NULL
direccion
NVARCHAR(255)
Dirección de residencia de la persona natural.


celular
NVARCHAR(25)
Número de teléfono móvil de la persona natural.
NOT NULL



Tabla “personas_juridicas”


Columna
Tipo de Dato
Descripción
Restricciones
id
INT
Identificador único de la persona jurídica.
PRIMARY KEY, NOT NULL
RUC
NVARCHAR(11)
Registro Único de Contribuyente (RUC) de la empresa.
UNIQUE, NOT NULL
razon_social
NVARCHAR(255)
Razón social de la empresa.
NOT NULL
fecha_constitucion
DATE
Fecha de constitución de la empresa.
NOT NULL

direccion_fiscal




NVARCHAR(255)




Dirección fiscal de la empresa.









Tabla “clientes”

Columna
Tipo de Dato
Descripción
Restricciones
id
INT
Identificador único del cliente.
PRIMARY KEY, IDENTITY(1,1), NOT NULL
persona_id
INT
Identificador de la persona asociada (natural o jurídica).
NOT NULL
tipo_cliente
NVARCHAR(20)
Tipo de cliente (Natural/Jurídico ó individual/empresa).
NOT NULL
fecha_registro
DATETIME
Fecha y hora en que se registró el cliente.
DEFAULT GETDATE()


Tabla “ modalidades_prestamo”


Columna
Tipo de Dato
Descripción
Restricciones
id
INT
Identificador único de la modalidad de préstamo.
PRIMARY KEY, IDENTITY(1,1), NOT NULL
nombre
NVARCHAR(100)
Nombre de la modalidad de préstamo.
NOT NULL
descripcion
NVARCHAR(255)
Descripción detallada de la modalidad de préstamo.
NOT NULL


Tabla “prestamos”


Columna
Tipo de Dato
Descripción
Restricciones
id
INT
Identificador único del préstamo.
PRIMARY KEY, IDENTITY(1,1), NOT NULL
cliente_id
INT
Identificador del cliente que solicita el préstamo.
FOREIGN KEY (cliente_id) REFERENCES clientes(id), NOT NULL
modalidad_id
INT
Identificador de la modalidad de préstamo.
FOREIGN KEY (modalidad_id) REFERENCES modalidades_prestamo(id), NOT NULL
monto_prestamo
MONEY
Monto total del préstamo otorgado.
NOT NULL
tasa_interes
DECIMAL(9,4)
Tasa de interés aplicada al préstamo.
NOT NULL
plazo_meses
INT
Plazo del préstamo en meses.
NOT NULL
estado
NVARCHAR(50)
Estado actual del préstamo (Activo, Pagado, Vencido, etc.).
NOT NULL
num_poliza_seguro
NVARCHAR(100)
Número de póliza de seguro asociada al préstamo.


fecha_desembolso
DATE
Fecha en que se realizó el desembolso del préstamo.
NOT NULL


Tabla “detalle_cuotas”

Columna
Tipo de Dato
Descripción
Restricciones
id
INT
Identificador único de la cuota.
PK, IDENTITY(1,1), NOT NULL
prestamo_id
INT
Identificador del préstamo al que pertenece la cuota.
FK prestamos
numero_cuota
INT
Número de la cuota dentro del préstamo.
NOT NULL
monto
MONEY
Monto correspondiente a la cuota.
NOT NULL
fecha_vencimiento
DATE
Fecha de vencimiento de la cuota.
NOT NULL
estado_cuenta
NVARCHAR(20)
Estado de la cuota (Pendiente, Pagada, Vencida, etc.).
NOT NULL



Tabla “pagos”


Columna
Tipo de Dato
Descripción
Restricciones
id
INT
Identificador único del pago.
PRIMARY KEY, IDENTITY(1,1), NOT NULL
cuota_id
INT
Identificador de la cuota que se está pagando.
FOREIGN KEY (cuota_id) REFERENCES detalle_cuotas(id), NOT NULL
cliente_id
INT
Identificador del cliente que realiza el pago.
FOREIGN KEY (cliente_id) REFERENCES clientes(id), NOT NULL
monto_pago
MONEY
Monto del pago realizado.
NOT NULL
fecha_pago
DATETIME
Fecha y hora en que se realizó el pago.
DEFAULT GETDATE()
metodo_pago
NVARCHAR(100)
Método de pago utilizado (Transferencia, Tarjeta, Efectivo, etc.).
NOT NULL


