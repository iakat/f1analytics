--- races: Add unique_name column for foreign key referencing
ALTER TABLE races ADD COLUMN unique_name text;
UPDATE races SET unique_name = concat(name, ' ', year);

--- Add readonly user
CREATE USER readonly WITH PASSWORD 'readonly';
GRANT USAGE ON SCHEMA public TO readonly;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO readonly;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO readonly;


--- Add points table
CREATE TABLE points (
    position    integer NOT NULL,
    points      integer NOT NULL
);

INSERT INTO public.points (position, points)
VALUES  (1, 25),
        (2, 18),
        (3, 15),
        (4, 12),
        (5, 10),
        (6, 8),
        (7, 6),
        (8, 4),
        (9, 2),
        (10, 1),
        (11, 0),
        (12, 0),
        (13, 0),
        (14, 0),
        (15, 0),
        (16, 0),
        (17, 0),
        (18, 0),
        (19, 0),
        (20, 0);
