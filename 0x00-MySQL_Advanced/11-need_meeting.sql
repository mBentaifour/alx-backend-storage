-- Create a user-defined function to safely divide two integers
-- No table for a meeting
-- They score are under (strict) to 80
-- AND no last_meeting date OR more than a month

DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS 
SELECT name FROM students 
WHERE 
    score < 80 AND 
    (last_meeting IS NULL 
        OR 
    last_meeting < ADDDATE(CURDATE(), interval -1 MONTH));
