CREATE DEFINER = CURRENT_USER TRIGGER tg_productsurls_AFTER_INSERT AFTER INSERT ON tb_productsurls FOR EACH ROW
BEGIN
	CALL sp_productsdata_save(NEW.idproduct);
END