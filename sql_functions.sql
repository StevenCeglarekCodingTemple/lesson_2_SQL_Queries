-- Aggregate Functions 

-- Big 5, Aggregate Functions
-- COUNT, AVG, MIN, MAX, SUM

-- Count total users
SELECT COUNT(*) as total_users FROM users;

-- Count posts per user
SELECT user_id, COUNT(*) as post_count
FROM posts
GROUP BY user_id;

-- Average Bio length
SELECT AVG(LENGTH(bio)) as avg_bio_length FROM users;

-- Posts with most reactions (sorterd)
SELECT post_id, COUNT(*) as reaction_count
FROM reactions
GROUP BY post_id
ORDER BY reaction_count DESC;

-- Find posts with more than 2 reactions
SELECT post_id, COUNT(*) as reaction_count
FROM reactions
GROUP BY post_id
HAVING reaction_count > 2

-- Find users with posts longers than average
SELECT user_id, AVG(LENGTH(caption)) as avg_caption_length
FROM posts
GROUP BY user_id
HAVING avg_caption_length > 65;

-- STRING Functions

-- Convert usernames to uppercase
SELECT UPPER(username) as username_upper FROM users;

-- Find usernames with specific Length
SELECT username, LENGTH(username) as name_length
FROM users
WHERE name_length >= 10

-- Find posts containing hashtags
SELECT caption FROM posts
WHERE caption LIKE '%#%';

-- Count posts with specific hashtags
SELECT COUNT(*) as food_posts FROM posts WHERE caption LIKE '%#food%'
SELECT COUNT(*) as travel_posts FROM posts WHERE caption LIKE '%#travel%'
SELECT COUNT(*) as fitness_posts FROM posts WHERE caption LIKE '%#fitness%'