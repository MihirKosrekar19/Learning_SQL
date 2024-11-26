-- -- use company_db;

-- START/BEGIN TRANSACTION: Start a transaction.
-- Transactions group multiple SQL operations into a single unit, ensuring that either all changes are committed or none are made.
-- This starts a new transaction.
-- -- start transaction;

-- COMMIT: Save changes made during a transaction.
-- Once you are satisfied with the operations in a transaction, use COMMIT to make them permanent in the database.
-- This saves all the changes made during the transaction to the database.
-- -- COMMIT;

-- ROLLBACK: Undo changes made during a transaction.
-- If something goes wrong during a transaction, use ROLLBACK to undo all changes since the last BEGIN TRANSACTION or SAVEPOINT.
-- This undoes all changes made during the transaction and reverts the database to the state it was in before the transaction started.
-- -- ROLLBACK;

--  SAVEPOINT: Set a savepoint within a transaction.
-- SAVEPOINT allows you to set points within a transaction to which you can roll back without canceling the entire transaction.
-- This creates a savepoint named savepoint1.
-- -- SAVEPOINT savepoint1;

-- Rolling back to a savepoint:
-- This undoes all changes made after the savepoint1 but keeps the changes made before it.
-- -- ROLLBACK TO savepoint1;

-- Releasing a savepoint:
-- This removes savepoint1, so it can no longer be rolled back to.
-- -- RELEASE SAVEPOINT savepoint1;
