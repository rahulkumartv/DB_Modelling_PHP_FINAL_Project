DELIMITER $$
/* Create a user to be used in PHP for the connection,
 * and give him all grants on the DB.
 */
-- Delete the user ...
DELETE FROM mysql.user WHERE user='tc_user' $$
-- and his grants
DELETE FROM mysql.db WHERE user='tc_user' $$
DELETE FROM mysql.tables_priv WHERE user='tc_user' $$
FLUSH PRIVILEGES $$
-- Create him
CREATE USER tc_user@localhost IDENTIFIED by 'tc_password' $$
-- Grant him rights on the DB ...
GRANT ALL ON training_center.* TO tc_user@localhost $$
-- and on the stored procedure
GRANT SELECT ON mysql.proc TO tc_user@localhost $$
