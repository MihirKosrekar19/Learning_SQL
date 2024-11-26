use company_db;

-- GRANT: Assign privileges to users.

-- This grants the user username the ability to SELECT and INSERT data into the employees table.
GRANT SELECT, INSERT ON employees TO 'username';

-- This grants all privileges on the my_database to the user username.
GRANT ALL PRIVILEGES ON my_database.* TO 'username';

-- REVOKE: Remove privileges from users.

-- This revokes the INSERT privilege from the user username on the employees table.
REVOKE INSERT ON employees FROM 'username';

-- This revokes all privileges from the user username on the my_database.
REVOKE ALL PRIVILEGES ON my_database.* FROM 'username';