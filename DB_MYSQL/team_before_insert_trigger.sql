DELIMITER $$
DROP TRIGGER IF EXISTS team_before_insert_trigger$$
CREATE TRIGGER team_before_insert_trigger
BEFORE insert ON team
FOR EACH ROW
BEGIN
SET NEW.created_at = now();
END$$