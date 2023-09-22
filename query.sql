-- SELECT --

SELECT * FROM staff ORDER BY last_name DESC;

SELECT * FROM payment WHERE payment_date BETWEEN '2005-06-00' AND '2005-06-31';

SELECT * FROM customer AS c
INNER JOIN rental AS r ON c.customer_id = r.customer_id
INNER JOIN inventory AS i ON r.inventory_id = i.inventory_id
INNER JOIN film AS f ON i.film_id = f.film_id
WHERE title = 'SILVERADO GOLDFINGER';

-- INSERT --

SELECT * FROM staff;

PRAGMA table_info(staff); -- VER LAS CASILLAS NOTNUL (1) Y LAS CASILLAS NULL (0) --

INSERT INTO staff (first_name, last_name, active, username, address_id, store_id, last_update)
VALUES ('Carlos', 'Suaza', 1, 'csuaza98', 468, 2, '2023-09-22');

INSERT INTO staff (first_name, last_name, active, email, username, address_id, store_id, last_update)
VALUES('Juan', 'Perez', 1, 'juan.perez@example.com', 'jperez21', 101, 1, '2023-09-22'),
('Ana', 'Gomez', 1, 'ana.gomez@example.com', 'agomez34', 102, 2, '2023-09-22'),
('Pedro', 'Lopez', 1, 'pedro.lopez@example.com', 'plopez47', 103, 1, '2023-09-22'),
('María', 'Martinez', 0, 'maria.martinez@example.com', 'mmartinez12', 104, 2, '2023-09-22'),
('Luis', 'Rodriguez', 1, 'luis.rodriguez@example.com', 'lrodriguez88', 105, 1, '2023-09-22'),
('Sofía', 'Garcia', 0, 'sofia.garcia@example.com', 'sgarcia66', 106, 2, '2023-09-22'),
('Daniel', 'Hernandez', 1, 'daniel.hernandez@example.com', 'dhernandez55', 107, 1, '2023-09-22'),
('Laura', 'Sanchez', 1, 'laura.sanchez@example.com', 'lsanchez29', 108, 2, '2023-09-22'),
('Miguel', 'Torres', 1, 'miguel.torres@example.com', 'mtorres17', 109, 1, '2023-09-22'),
('Carmen', 'Gonzalez', 0, 'carmen.gonzalez@example.com', 'cgonzalez91', 110, 2, '2023-09-22'),
('Diego', 'Ramirez', 1, 'diego.ramirez@example.com', 'dramirez63', 111, 1, '2023-09-22'),
('Elena', 'Fernandez', 1, 'elena.fernandez@example.com', 'efernandez42', 112, 2, '2023-09-22'),
('Alejandro', 'Diaz', 1, 'alejandro.diaz@example.com', 'adiaz75', 113, 1, '2023-09-22'),
('Isabel', 'Lopez', 0, 'isabel.lopez@example.com', 'ilopez86', 114, 2, '2023-09-22'),
('Javier', 'Ruiz', 1, 'javier.ruiz@example.com', 'jruiz31', 115, 1, '2023-09-22'),
('Lucía', 'Santos', 1, 'lucia.santos@example.com', 'lsantos19', 116, 2, '2023-09-22'),
('Gabriel', 'Gomez', 1, 'gabriel.gomez@example.com', 'ggomez58', 117, 1, '2023-09-22'),
('Rosa', 'Hernandez', 0, 'rosa.hernandez@example.com', 'rhernandez74', 118, 2, '2023-09-22'),
('Carlos', 'Martinez', 1, 'carlos.martinez@example.com', 'cmartinez10', 119, 1, '2023-09-22'),
('Patricia', 'Torres', 1, 'patricia.torres@example.com', 'ptorres27', 120, 2, '2023-09-22'),
('Andrés', 'Fernandez', 1, 'andres.fernandez@example.com', 'afernandez53', 121, 1, '2023-09-22'),
('Marta', 'Sanchez', 1, 'marta.sanchez@example.com', 'msanchez76', 122, 2, '2023-09-22'),
('Pablo', 'Lopez', 1, 'pablo.lopez@example.com', 'plopez98', 123, 1, '2023-09-22'),
('Sara', 'Garcia', 1, 'sara.garcia@example.com', 'sgarcia14', 124, 2, '2023-09-22'),
('Jorge', 'Ramirez', 0, 'jorge.ramirez@example.com', 'jramirez45', 125, 1, '2023-09-22'),
('Adriana', 'Gomez', 1, 'adriana.gomez@example.com', 'agomez20', 126, 2, '2023-09-22'),
('Fernando', 'Perez', 1, 'fernando.perez@example.com', 'fperez84', 127, 1, '2023-09-22'),
('Natalia', 'Lopez', 0, 'natalia.lopez@example.com', 'nlopez61', 128, 2, '2023-09-22'),
('Antonio', 'Martinez', 1, 'antonio.martinez@example.com', 'amartinez11', 129, 1, '2023-09-22'),
('Eva', 'Sanchez', 1, 'eva.sanchez@example.com', 'esanchez26', 130, 2, '2023-09-22'),
('Raúl', 'Hernandez', 1, 'raul.hernandez@example.com', 'rhernandez72', 131, 1, '2023-09-22'),
('Cecilia', 'Gonzalez', 0, 'cecilia.gonzalez@example.com', 'cgonzalez59', 132, 2, '2023-09-22'),
('Gustavo', 'Rodriguez', 1, 'gustavo.rodriguez@example.com', 'grodriguez32', 133, 1, '2023-09-22'),
('Silvia', 'Fernandez', 1, 'silvia.fernandez@example.com', 'sfernandez87', 134, 2, '2023-09-22'),
('Roberto', 'Diaz', 1, 'roberto.diaz@example.com', 'rdiaz37', 135, 1, '2023-09-22'),
('Mariana', 'Perez', 0, 'mariana.perez@example.com', 'mperez94', 136, 2, '2023-09-22'),
('Alberto', 'Gomez', 1, 'alberto.gomez@example.com', 'agomez65', 137, 1, '2023-09-22'),
('Lorena', 'Torres', 1, 'lorena.torres@example.com', 'ltorres52', 138, 2, '2023-09-22'),
('Hector', 'Sanchez', 1, 'hector.sanchez@example.com', 'hsanchez07', 139, 1, '2023-09-22'),
('Nuria', 'Martinez', 1, 'nuria.martinez@example.com', 'nmartinez71', 140, 2, '2023-09-22'),
('Ricardo', 'Gonzalez', 1, 'ricardo.gonzalez@example.com', 'rgonzalez38', 141, 1, '2023-09-22'),
('Alicia', 'Lopez', 0, 'alicia.lopez@example.com', 'alopez83', 142, 2, '2023-09-22'),
('Paco', 'Fernandez', 1, 'paco.fernandez@example.com', 'pfernandez22', 143, 1, '2023-09-22'),
('Elena', 'Ruiz', 1, 'elena.ruiz@example.com', 'eruiz57', 144, 2, '2023-09-22'),
('Jose', 'Santos', 1, 'jose.santos@example.com', 'jsantos16', 145, 1, '2023-09-22'),
('Marta', 'Gomez', 0, 'marta.gomez@example.com', 'mgomez49', 146, 2, '2023-09-22'),
('Juan', 'Hernandez', 1, 'juan.hernandez@example.com', 'jhernandez68', 147, 1, '2023-09-22'),
('Laura', 'Perez', 1, 'laura.perez@example.com', 'lperez30', 148, 2, '2023-09-22'),
('Carlos', 'Torres', 1, 'carlos.torres@example.com', 'ctorres47', 149, 1, '2023-09-22'),
('Sofia', 'Martinez', 0, 'sofia.martinez@example.com', 'smartinez64', 150, 2, '2023-09-22'),
('David', 'Lopez', 1, 'david.lopez@example.com', 'dlopez59', 151, 1, '2023-09-22'),
('Elena', 'Garcia', 1, 'elena.garcia@example.com', 'egarcia85', 152, 2, '2023-09-22');

SELECT * FROM film WHERE title = 'SILVERADO GOLDFINGER';
SELECT * FROM inventory WHERE film_id = 798;
SELECT COUNT(inventory_id) FROM inventory;
PRAGMA TABLE_INFO (inventory);
INSERT INTO inventory (inventory_id, film_id, store_id, last_update) VALUES (4582, 798, 1, '2023-09-22');

-- UPDATE --

SELECT * FROM ACTOR WHERE actor_id = 188;

UPDATE actor SET first_name = 'PIEDRA', last_name = 'DUKAKISS'
WHERE actor_id = 188;

SELECT * FROM address WHERE address_id = 295;

UPDATE address SET address = '0x544 Tarsus Boulevard'
WHERE address_id = 295;


-- DETELE --

DELETE FROM staff WHERE staff_id = 50;

SELECT * FROM staff;