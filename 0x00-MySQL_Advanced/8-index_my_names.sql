
-- Create an index on the first character of the 'name' column in the 'names' table.
-- Optimize simple search

CREATE INDEX idx_name_first
ON names (name(1));
