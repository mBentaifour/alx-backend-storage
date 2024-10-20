-- creates an index idx_name_first_score on the table names
-- and the first letter of name and the score
-- Optimize search and score

CREATE INDEX idx_name_first_score
ON names (name(1), score);
