-- Create user table if not exists
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Add sample user for testing (if table is empty)
INSERT INTO user (username, email, password)
SELECT 'testuser', 'test@example.com', 'password123'
WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'testuser');

-- Grant privileges to 'user' account
GRANT ALL PRIVILEGES ON mydb.* TO 'user'@'%';
FLUSH PRIVILEGES;
