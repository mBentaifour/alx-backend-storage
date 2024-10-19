-- In and not out
-- a SQL script that creates a table users
-- With attributes > id, email, name, country

CREATE TABLE IF NOT EXISTS users (
   id INT AUTO_INCREMENT PRIMARY KEY,
   email VARCHAR(255) NOT NULL UNIQUE,
   name VARCHAR(255),
   country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US' CHECK (country IN ('US', 'CO', 'TN'))
);
