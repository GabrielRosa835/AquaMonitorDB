-- CREATE DATABASE db_upxII;
USE db_upxII;

-- DROP PROCEDURE insert_endereco;
DELIMITER $
CREATE PROCEDURE insert_dispositivo(
	cliente_id_in INT,
    endereco_id_in INT,
    dispositivo_noserie_in INT
)
BEGIN
	IF dispositivo_noserie_in IS NULL 
		THEN SET dispositivo_noserie_in = create_no_serie(); 
    END IF;
    
	INSERT INTO tbl_dispositivos VALUES 
    (NULL, dispositivo_noserie_in, 0);
    
    SET @NEW_dispositivo_id = get_device_id (
		dispositivo_noserie_in
	);
    
    INSERT INTO tbl_cliente_dispositivo VALUES 
    (cliente_id_in, @NEW_dispositivo_id);
    
    INSERT INTO tbl_endereco_dispositivo VALUES
    (endereco_id_in, @NEW_dispositivo_id);
END $
DELIMITER ;