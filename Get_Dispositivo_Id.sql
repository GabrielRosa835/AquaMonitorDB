-- CREATE DATABASE db_upxII;
USE db_upxII;

-- DROP FUNCTION get_noserie_from_id;
CREATE FUNCTION get_device_id (
	dispositivo_noserie_in INT
) RETURNS INT DETERMINISTIC
RETURN (
	SELECT Dispositivo_Id FROM tbl_dispositivos
		WHERE Dispositivo_NoSerie = dispositivo_noserie_in
	)
;