DELIMITER $$
DROP TRIGGER IF EXISTS document_before_insert_trigger$$
CREATE TRIGGER document_before_insert_trigger
BEFORE insert ON document
FOR EACH ROW
BEGIN
SET NEW.created_at = now();
END$$