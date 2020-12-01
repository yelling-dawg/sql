ALTER TABLE users ADD COLUMN sample_cr DATETIME;
ALTER TABLE users ADD COLUMN sample_up DATETIME;
-- можно ли это как то покомпактней сделать?


UPDATE users SET sample_cr = STR_TO_DATE(created_at, "%d.%m.%y %h:%s");
UPDATE users SET sample_up = STR_TO_DATE(updated_at, "%d.%m.%y %h:%s");
ALTER TABLE users 
	DROP COLUMN created_at,
	DROP COLUMN updated_at;

ALTER TABLE users CHANGE 'sample_cr' 'created_at' DATETIME;
ALTER TABLE users CHANGE 'sample_up' 'updated_at' DATETIME;