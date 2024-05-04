-- CREATE DATABASE db_upxII;
USE db_upxII;

-- DROP FUNCTION create_no_serie;
DELIMITER $
CREATE FUNCTION create_no_serie() RETURNS INT DETERMINISTIC
BEGIN
	DECLARE new_no_serie INT DEFAULT -1;
	SET new_no_serie = RAND() * 90000 + 10000;
	
	WHILE 
		(SELECT Dispositivo_NoSerie FROM tbl_dispositivos WHERE Dispositivo_NoSerie = new_no_serie) IS NOT NULL
	DO
		SET new_no_serie = RAND() * 800 + 200;
	END WHILE;
	RETURN new_no_serie;
END $
DELIMITER ;