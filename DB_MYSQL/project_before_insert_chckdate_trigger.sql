DELIMITER $$
DROP TRIGGER IF EXISTS project_before_insert_chckdate_trigger$$
CREATE TRIGGER project_before_insert_chckdate_trigger
BEFORE insert ON project
FOR EACH ROW
BEGIN
IF ( NEW.deadline < NEW.created_at ) THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT='Invalid project deadline date : must be greater than creation date', MYSQL_ERRNO=3000;
END if;
END$$