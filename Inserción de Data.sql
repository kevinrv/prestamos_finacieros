USE db_prestamos_financieros;
GO

-- Datos personas
INSERT INTO personas_naturales (id, numero_documento, nombres, apellido_paterno, apellido_materno, direccion, celular)
VALUES
(1, '12345678', 'Juan', 'Pérez', 'González', 'Av. Siempre Viva 123', '987654321'),
(2, '23456789', 'María', 'López', 'Ramírez', 'Calle Falsa 456', '987654322'),
(3, '34567890', 'Carlos', 'Fernández', 'Torres', 'Av. Principal 789', '987654323'),
(4, '45678901', 'Ana', 'García', 'Martínez', 'Calle Real 101', '987654324'),
(5, '56789012', 'Pedro', 'Sánchez', 'Hernández', 'Av. Central 202', '987654325'),
(6, '67890123', 'Laura', 'Rodríguez', 'Pérez', 'Calle Norte 303', '987654326'),
(7, '78901234', 'José', 'Ramírez', 'Gómez', 'Av. Sur 404', '987654327'),
(8, '89012345', 'Lucía', 'Torres', 'Jiménez', 'Calle Este 505', '987654328'),
(9, '90123456', 'Diego', 'Martínez', 'López', 'Av. Oeste 606', '987654329'),
(10, '01234567', 'Carmen', 'Hernández', 'Rodríguez', 'Calle Centro 707', '987654330'),
(11, '11223344', 'Luis', 'Gómez', 'Sánchez', 'Av. Libertad 808', '987654331'),
(12, '22334455', 'Marta', 'Jiménez', 'Torres', 'Calle Independencia 909', '987654332'),
(13, '33445566', 'Raúl', 'López', 'Martínez', 'Av. Democracia 1010', '987654333'),
(14, '44556677', 'Elena', 'Pérez', 'García', 'Calle Paz 1111', '987654334'),
(15, '55667788', 'Andrés', 'Ramírez', 'Sánchez', 'Av. Unión 1212', '987654335'),
(16, '66778899', 'Claudia', 'Torres', 'Fernández', 'Calle Progreso 1313', '987654336'),
(17, '77889900', 'Sofía', 'Martínez', 'Gómez', 'Av. Amistad 1414', '987654337'),
(18, '88990011', 'Fernando', 'Hernández', 'López', 'Calle Victoria 1515', '987654338'),
(19, '99001122', 'Valeria', 'García', 'Rodríguez', 'Av. Esperanza 1616', '987654339'),
(20, '00112233', 'Jorge', 'López', 'Jiménez', 'Calle Solidaridad 1717', '987654340'),
(21, '11223300', 'Daniela', 'Pérez', 'Sánchez', 'Av. Justicia 1818', '987654341'),
(22, '22334411', 'Ricardo', 'Ramírez', 'Torres', 'Calle Igualdad 1919', '987654342'),
(23, '33445522', 'Patricia', 'Gómez', 'Martínez', 'Av. Fraternidad 2020', '987654343'),
(24, '44556633', 'Alberto', 'Jiménez', 'García', 'Calle Libertad 2121', '987654344'),
(25, '55667744', 'Isabel', 'López', 'Hernández', 'Av. Independencia 2222', '987654345'),
(26, '66778855', 'Francisco', 'Pérez', 'Sánchez', 'Calle Democracia 2323', '987654346'),
(27, '77889966', 'Alejandra', 'Ramírez', 'Gómez', 'Av. Paz 2424', '987654347'),
(28, '88990077', 'Emilio', 'Torres', 'Jiménez', 'Calle Unión 2525', '987654348'),
(29, '99001188', 'Gabriela', 'Martínez', 'López', 'Av. Progreso 2626', '987654349'),
(30, '00112299', 'Sergio', 'Hernández', 'García', 'Calle Amistad 2727', '987654350');

INSERT INTO personas_juridicas (id, RUC, razon_social, fecha_constitucion, direccion_fiscal)
VALUES
(31, '20100000001', 'Empresa Alpha S.A.', '2000-01-15', 'Av. Industrial 123'),
(32, '20100000002', 'Beta Corp.', '2001-02-20', 'Calle Comercio 456'),
(33, '20100000003', 'Gamma S.R.L.', '2002-03-25', 'Av. Producción 789'),
(34, '20100000004', 'Delta y Asociados', '2003-04-30', 'Calle Negocios 101'),
(35, '20100000005', 'Epsilon Ltda.', '2004-05-05', 'Av. Servicios 202'),
(36, '20100000006', 'Zeta Consultores', '2005-06-10', 'Calle Soluciones 303'),
(37, '20100000007', 'Theta Innovaciones', '2006-07-15', 'Av. Proyectos 404'),
(38, '20100000008', 'Iota Ingeniería S.A.C.', '2007-08-20', 'Calle Desarrollo 505'),
(39, '20100000009', 'Kappa Tecnología', '2008-09-25', 'Av. Avances 606'),
(40, '20100000010', 'Lambda Construcciones', '2009-10-30', 'Calle Obras 707'),
(41, '20100000011', 'Mu Financiera', '2010-11-05', 'Av. Capital 808'),
(42, '20100000012', 'Nu Servicios S.A.', '2011-12-10', 'Calle Asesoría 909'),
(43, '20100000013', 'Xi Consultoría', '2012-01-15', 'Av. Estrategia 1010'),
(44, '20100000014', 'Omicron Logística', '2013-02-20', 'Calle Distribución 1111'),
(45, '20100000015', 'Pi Internacional', '2014-03-25', 'Av. Comercio Exterior 1212'),
(46, '20100000016', 'Rho Exportaciones', '2015-04-30', 'Calle Global 1313'),
(47, '20100000017', 'Sigma Importaciones', '2016-05-05', 'Av. Importadores 1414'),
(48, '20100000018', 'Tau Energía S.A.', '2017-06-10', 'Calle Recursos 1515'),
(49, '20100000019', 'Upsilon Tecnológica', '2018-07-15', 'Av. Innovación 1616'),
(50, '20100000020', 'Phi Construcciones', '2019-08-20', 'Calle Edificaciones 1717'),
(51, '20100000021', 'Chi Industrial', '2020-09-25', 'Av. Manufactura 1818'),
(52, '20100000022', 'Psi Consultores', '2021-10-30', 'Calle Planeación 1919'),
(53, '20100000023', 'Omega Global S.A.C.', '2022-11-05', 'Av. Internacional 2020'),
(54, '20100000024', 'Alpha Soluciones', '2023-12-10', 'Calle Innovación 2121'),
(55, '20100000025', 'Beta Tech', '2024-01-15', 'Av. Tecnología 2222'),
(56, '20100000026', 'Gamma Logística', '2025-02-20', 'Calle Distribución 2323'),
(57, '20100000027', 'Delta Asesoría', '2026-03-25', 'Av. Negocios 2424'),
(58, '20100000028', 'Epsilon Innovación', '2027-04-30', 'Calle Futuro 2525'),
(59, '20100000029', 'Zeta Proyectos', '2028-05-05', 'Av. Emprendedores 2626');

-- Clientes

SELECT*FROM clientes;
INSERT INTO clientes (persona_id, tipo_cliente,fecha_registro)
SELECT id as 'persona_id','N',GETDATE()
FROM personas_naturales
UNION
SELECT id as 'persona_id','J',GETDATE()
FROM personas_juridicas;

-- Modalidad prestamos

INSERT INTO modalidades_prestamo (nombre, descripcion)
VALUES
('Préstamo Personal', 'Préstamo destinado a necesidades personales, como compra de electrodomésticos, estudios, viajes, etc.'),
('Préstamo Hipotecario', 'Préstamo a largo plazo para la adquisición de viviendas o bienes inmuebles.'),
('Préstamo Vehicular', 'Préstamo para la compra de automóviles o motocicletas.'),
('Préstamo Empresarial', 'Préstamo destinado al financiamiento de actividades empresariales, como compra de maquinaria o capital de trabajo.'),
('Línea de Crédito', 'Línea de crédito revolvente disponible para ser utilizada según las necesidades del cliente.')
;

-- Prestamos
SELECT*FROM prestamos;
SELECT*FROM detalle_cuotas;


DECLARE @Counter INT
SET @Counter = 0

WHILE @Counter < 100
BEGIN
INSERT INTO prestamos (cliente_id,modalidad_id,monto_prestamo,tasa_interes,plazo_meses,estado,num_poliza_seguro,fecha_desembolso)
SELECT 
  c.id AS 'cliente_id',
  mp.id AS 'modalidad_id',
  ROUND(RAND() * 100000, 2) AS monto, -- Monto aleatorio
  ROUND(RAND(),2) AS tasa_interes,-- Tasa de interes en decimales ,
  ROUND(RAND()*10,0)+12 AS tasa_interes,-- numero de meses prestamo,
  'Cancelado',
  CONCAT('PZ00',CAST(ROUND(RAND() * 10000,0) AS VARCHAR(50))) AS num_poliza_seguro, -- Número de cuenta aleatorio,
  DATEADD(DAY, -ROUND(RAND() * 780,0), GETDATE()) AS fecha_desembolso -- Fecha de desembolso en los últimos 2 años
FROM clientes c
CROSS JOIN modalidades_prestamo mp
ORDER BY NEWID()
OFFSET 0 ROWS
FETCH NEXT 1 ROWS ONLY;
    SET @Counter = @Counter + 1
END

-- detalle cuotas

SELECT*FROM detalle_cuotas;

DECLARE @Counter INT
SET @Counter = 0

WHILE @Counter < 1000
BEGIN
INSERT INTO detalle_cuotas(prestamo_id,numero_cuota,monto,fecha_vencimiento,estado_cuota)
SELECT 
  p.id AS 'prestamo_id',
  p.plazo_meses-ROUND(RAND()*10,0) AS numero_cuota,
  p.monto_prestamo/p.plazo_meses AS monto, -- Monto aleatorio
  DATEADD(MONTH,p.plazo_meses,p.fecha_desembolso) AS 'fecha_vencimiento',
  'En mora'
FROM Prestamos p
CROSS JOIN modalidades_prestamo mp
ORDER BY NEWID()
OFFSET 0 ROWS
FETCH NEXT 1 ROWS ONLY;
    SET @Counter = @Counter + 1
END

-- Pagos

SELECT*FROM pagos;
SELECT DISTINCT estado_cuota FROM detalle_cuotas;
SELECT*FROM detalle_cuotas;

INSERT INTO pagos (cuota_id,cliente_id,monto_pago,fecha_pago,metodo_pago)
SELECT dc.id,c.id,dc.monto,dc.fecha_vencimiento,
'Transferencia'
FROM detalle_cuotas dc
INNER JOIN prestamos p ON p.id=dc.prestamo_id
INNER JOIN clientes c ON c.id=p.cliente_id
WHERE dc.estado_cuota IN ('Pagada','En mora');