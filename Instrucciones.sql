-- Database: gym
-- --------------------------------------------------------------
--
-- Pregunta 2.a Muestra un listado con el NIF, Nombre de Empresa y la Fecha de Inicio de convenio de las empresas que tienen convenio con el Gimnasio, ordenando el listado por la Fecha (de más reciente a menos).
--
SELECT nif, empresa, fecha_inicio_convenio
FROM empresa
WHERE fecha_fin_convenio > curdate() OR fecha_fin_convenio IS NULL
ORDER BY fecha_inicio_convenio DESC;
--
-- Pregunta 2.b	Muestra un listado de las actividades impartidas por el gimnasio, que favorezcan la fuerza y la velocidad al mismo tiempo. 
--
SELECT * FROM actividad WHERE fuerza = true AND velocidad = true;
--
-- Pregunta 2.c Actualiza la cuota mensual de aquellos planes cuyo precio de la matrícula este por debajo de 50. Incrementa esta cuota en un 15%. 
--
SET SQL_SAFE_UPDATES=0;
UPDATE plan SET cuota_mensual = cuota_mensual * 1.15 WHERE matricula < 50.00;
--
-- Pregunta 2.d Inserta 5 nuevos socios en el gimnasio (uno de los cuales deberás ser tú). Dos (2) de ellos deberán estar en planes corporativos. Ten cuidado de rellenar todas las tablas pertinentes y los datos necesarios. Desactiva las FK si es necesario.
--
SELECT * FROM corporativo c INNER JOIN socio s ON s.id_socio != c.id_socio;
INSERT INTO socio VALUES (101, "43285894F", "Antoni", "FERNANDEZ", "ALMECIJA", "M", "1998-02-11", 1, curdate(), 1, null, 644370645, "afernandezalme@uoc.edu", 08224, null, "Gimnasia Artística");
INSERT INTO socio VALUES (102, "12345678X", "María", "LOPEZ", "GARCIA", "F", "1995-08-22", 1, curdate(), 1, null, 611223344, "maria.lopez@example.com", 28001, null, "Gimnasia Artística");
INSERT INTO socio VALUES (103, "87654321A", "David", "MARTINEZ", "PEREZ", "M", "1988-05-14", 1, curdate(), 1, null, 633445566, "david.martinez@example.com", 41001, null, "Gimnasia Artística");
INSERT INTO socio VALUES (104, "27658945D", "Laura", "MARTINEZ", "GONZALEZ", "F", "1985-07-25", 1, curdate(), 1, null, 666554433, "lmartinezg@gmail.com", 28026, null, "Gimnasia Artística");
INSERT INTO socio VALUES (105, "36584123E", "Pedro", "SANCHEZ", "GARCIA", "M", "1990-03-12", 1, curdate(), 1, null, 655443322, "psanchezgarcia@hotmail.com", 41005, null, "Gimnasia Artística");
SET FOREIGN_KEY_CHECKS=0;
INSERT INTO corporativo VALUES (104, "27658945D");
INSERT INTO corporativo VALUES (105, "36584123E");    
SET FOREIGN_KEY_CHECKS=1; 
--
-- Pregunta 2.e Elimina de la tabla socios aquellos socios que contengan los códigos postales 28026, 41005 y 15024. Desactiva las FK si es necesario.
--
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM socio
WHERE codigo_postal= 48036 OR codigo_postal=41005 OR codigo_postal=15023;
SET FOREIGN_KEY_CHECKS=1;
--
-- Pregunta 2.f Muestra en un listado los siguientes datos para los socios corporativos: idSocio, Nombre completo (en una sola columna), NIF de la Empresa y Nombre de la Empresa. El listado deberá mostrarse ordenado nombre del socio y por nombre de la empresa.
--
SELECT socio.id_socio, concat(socio.nombre, " ",socio.apellido1, " ", socio.apellido2) AS Nombre, corporativo.nif, empresa.empresa 
FROM socio, corporativo, empresa 
WHERE corporativo.id_socio = socio.id_socio 
AND corporativo.nif = empresa.nif 
ORDER BY empresa.empresa, socio.nombre;   
--
-- Pregunta 2.g Mostrar el número de actividades que ha impartido cada monitor en el 2023.
--
SELECT *, (SELECT count(*)  FROM horario WHERE YEAR(fecha) = 2023 AND id_monitor = m.id_monitor) AS 'actividades_año_actual' FROM monitor m;
--
-- Pregunta 2.h Mostrar aquellas actividades que se realizan de las 8:00 a las 13:00 de la mañana y que están incluidas en plan Básico Mañanas.
--
SELECT DISTINCT ac.*, p.id_plan, h.hora FROM actividad ac, horario h, plan_actividad p
WHERE p.id_plan = 1 AND h.hora BETWEEN '8:00:00' AND '13:00:00'
ORDER BY h.hora ASC, ac.id_actividad;
--
-- Pregunta 2.i Contar cuántas instalaciones tiene registrado el gimnasio en la tabla de instalaciones. Al ejecutar la consulta, deberá presentar la siguiente salida, donde n, es el número de instalaciones.
--
SELECT count(*) AS 'Número de instalaciones' FROM instalacion;
--
-- Pregunta 2.j Mostrar en un listado como el siguiente, el estimado de cobro del gimnasio por concepto de cuota mensual para los planes no corporativos. Utiliza la función FORMAT para que los datos de Cuota Mensual y Total se muestren con 2 decimales y punto entre los miles.
--
SELECT p.plan, REPLACE(FORMAT(count(*), 0), ',', '.') AS "Número de socios", REPLACE(FORMAT(p.cuota_mensual, 2), ',', '.') AS "Cuota mensual", REPLACE(FORMAT(count(*) * p.cuota_mensual, 2), ',', '.') AS Total
FROM plan AS p, socio AS s
WHERE s.id_plan = p.id_plan AND NOT s.id_plan IN (7, 8)
GROUP BY p.id_plan;
