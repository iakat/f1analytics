--- races: Add unique_name column for foreign key referencing
ALTER TABLE races ADD COLUMN unique_name text;
UPDATE races SET unique_name = concat(name, ' ', year);

--- Add readonly user
CREATE USER readonly WITH PASSWORD 'readonly';
GRANT USAGE ON SCHEMA public TO readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO readonly;
