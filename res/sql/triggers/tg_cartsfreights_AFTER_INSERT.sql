CREATE DEFINER = CURRENT_USER TRIGGER tg_cartsfreights_AFTER_INSERT AFTER INSERT ON tb_cartsfreights FOR EACH ROW
BEGIN
	CALL sp_cartsdata_save(NEW.idcart);
END