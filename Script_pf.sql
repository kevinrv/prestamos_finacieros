USE db_prestamos_financieros;
GO


CREATE TABLE [clientes] (
	[id] int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	persona_id INT NOT NULL,
	[tipo_cliente] nvarchar(20),
	[fecha_registro] datetime
);


CREATE TABLE [personas_naturales] (
	[id] int PRIMARY KEY NOT NULL,
	[numero_documento] nvarchar(20) NOT NULL,
	[nombres] nvarchar(255),
	[apellido_paterno] nvarchar(255),
	[apellido_materno] nvarchar(255),
	[direccion] nvarchar(255),
	[celular] nvarchar(25) NOT NULL,
);

CREATE TABLE [personas_juridicas] (
	[id] int PRIMARY KEY NOT NULL,
	[RUC] nvarchar( 11),
	[razon_social] nvarchar(255),
	[fecha_constitución] date,
	[direccion_fiscal] nvarchar(255),
);

CREATE TABLE [modalidades_prestamo] (
	[id] int IDENTITY(1,1) NOT NULL UNIQUE,
	[nombre] nvarchar(100) NOT NULL,
	[descripcion] nvarchar(255) NOT NULL,
	PRIMARY KEY ([id])
);

CREATE TABLE [prestamos] (
	[id] int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[cliente_id] int,
	[modalidad_id] int,
	[monto_prestamo] MONEY,
	[tasa_interes] decimal(9,4),
	[plazo_meses] int,
	[estado] nvarchar(255),
	[num_poliza_seguro] nvarchar(100),
	CONSTRAINT fk_prestamo_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id),
	CONSTRAINT fk_prestamo_modalidad FOREIGN KEY (modalidad_id) REFERENCES modalidades_prestamo(id)
);

CREATE TABLE [detalle_cuotas] (
	[id] int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[prestamo_id] int,
	[numero_cuota] int,
	[monto] MONEY,
	[fecha_vencimiento] date NOT NULL,
	[estado_cuota] nvarchar(20),
	CONSTRAINT fk_cuota_prestamo FOREIGN KEY (prestamo_id) REFERENCES prestamos(id)
);



CREATE TABLE [pagos] (
	[id] int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[cuota_id] int,
	[cliente_id] int NOT NULL,
	[monto_pago] MONEY,
	[fecha_pago] datetime,
	[metodo_pago] nvarchar(100),
	CONSTRAINT fk_pago_cuota FOREIGN KEY (cuota_id) REFERENCES detalle_cuotas(id),
	CONSTRAINT FK_pagos_Cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);




