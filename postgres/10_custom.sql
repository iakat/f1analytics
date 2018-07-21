--- races: Add unique_name column for foreign key referencing
ALTER TABLE races ADD COLUMN unique_name text;
UPDATE races SET unique_name = concat(name, ' ', year);
