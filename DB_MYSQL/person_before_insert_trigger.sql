DELIMITER $$
DROP TRIGGER IF EXISTS person_before_insert_trigger$$
CREATE TRIGGER person_before_insert_trigger
BEFORE insert ON person
FOR EACH ROW
BEGIN
SET NEW.created_at = now();
END$$