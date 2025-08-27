-- SELECT column_name1, column_name2.... FROM table_name

SELECT * FROM users;


SELECT * FROM reactions;

-- Get usernames and bio only
SELECT username, bio FROM users;

-- Get user_id and caption only
SELECT user_id, caption FROM posts;

-- Get first 5 users
SELECT * FROM users LIMIT 5;

-- Get first 3 posts
SELECT * FROM posts LIMIT 3;

-- Find users with 'photo' in their bio
SELECT username, bio FROM users 
WHERE bio LIKE '%photo%';

-- Find posts by user ID 1
SELECT caption FROM posts WHERE user_id = 1;

-- Find posts with location data
SELECT caption, location FROM posts
WHERE location IS NOT NULL;

-- Fijnd users with usernames containing 'a'
SELECT username FROM users
WHERE username LIKE '%a%';

-- Find posts with location coordinates above 40
SELECT caption, location FROM posts
WHERE location > 40;

-- Find posts with location between 35 and 40
SELECT caption, location FROM posts
WHERE location BETWEEN 35 AND 40;

-- Find users who joined in January 2023
SELECT username, created_at FROM users
WHERE created_at >= '2023-01-01' AND created_at < '2023-02-01';

-- Find posts from the last week of April 2023
SELECT caption, created_at FROM posts 
WHERE created_at >= '2023-04-24' AND created_at <= '2023-04-30';

-- Using BETWEEN for date ranges (inclusive)
SELECT username, created_at FROM users 
WHERE created_at BETWEEN '2023-01-01' AND '2023-01-31';

-- Find posts from a specific date range
SELECT caption, created_at FROM posts 
WHERE created_at BETWEEN '2023-04-15' AND '2023-04-20';

-- Find users with usernames alphabetically after 'm'
SELECT username FROM users
WHERE username > 'm';

-- Find posts with captions longer than 100 characters
SELECT caption FROM posts 
WHERE LENGTH(caption) > 100;

-- Find posts without location data
SELECT caption FROM posts 
WHERE location IS NULL;

-- Find posts with location data
SELECT caption, location FROM posts 
WHERE location IS NOT NULL;

-- Find usernames that start with 'a'
SELECT username FROM users 
WHERE username LIKE 'a%';

-- Find usernames that end with 'son'
SELECT username FROM users 
WHERE username LIKE '%son';

-- Find posts containing 'coffee' anywhere in the caption
SELECT caption FROM posts 
WHERE caption LIKE '%coffee%';

-- Find usernames containing 'lee' anywhere in the name
SELECT username FROM users 
WHERE username LIKE '%lee%';

-- Find usernames with exactly 4 characters
SELECT username FROM users 
WHERE username LIKE '____';

-- Find usernames that start with 'a' and have exactly 3 more characters
SELECT username FROM users 
WHERE username LIKE 'a___';

-- Find usernames with pattern: letter + underscore + 'son'
SELECT username FROM users 
WHERE username LIKE '_son';

-- Find usernames that start with 'a' and end with 'n'
SELECT username FROM users 
WHERE username LIKE 'a%n';

-- Find usernames with 'a' as second character
SELECT username FROM users 
WHERE username LIKE '_a%';

-- Find posts with hashtags that start with # and end with a specific word
SELECT caption FROM posts 
WHERE caption LIKE '%#food%';

-- Find posts containing literal % symbol (using ESCAPE)
SELECT caption FROM posts 
WHERE caption LIKE '%\%%' ESCAPE '\';

-- Find posts containing literal underscore
SELECT caption FROM posts 
WHERE caption LIKE '%\_%' ESCAPE '\';

-- Sort users alphabetically by username
SELECT username FROM users ORDER BY username;

-- Sort posts by creation date (newest first)
SELECT caption, created_at FROM posts 
ORDER BY created_at DESC;

-- Sort users by username, then by bio length
SELECT username, bio FROM users 
ORDER BY username, LENGTH(bio);