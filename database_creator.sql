CREATE database mySoulmate; 
USE mySoulmate;
-- Table 1 : Users
CREATE TABLE users (
  user_id INT,
  location VARCHAR(50),
  religiosity INT,
  height FLOAT,
  age INT,
  gender VARCHAR(10),
  smokes BOOLEAN,
  drinks BOOLEAN,
  race VARCHAR(20),
  has_kids BOOLEAN,
  language VARCHAR(20),
  hobby VARCHAR(50)
);

INSERT INTO users (user_id, location, religiosity, height, age, gender, smokes, drinks, race, has_kids, language, hobby)
VALUES 
  (1, 'New York', 5, 6.2, 32, 'male', 'No', 'Yes', 'Caucasian', 'Yes', 'English', 'Hiking'),
  (2, 'Los Angeles', 3, 5.9, 25, 'female', 'Yes', 'Yes', 'Hispanic', 'No', 'Spanish', 'Dancing'),
  (3, 'Chicago', 7, 5.11, 42, 'male', 'No', 'Yes', 'African American', 'Yes', 'English', 'Reading'),
  (4, 'Houston', 4, 5.8, 29, 'male', 'Yes', 'No', 'Asian', 'No', 'Mandarin', 'Video games'),
  (5, 'Philadelphia', 9, 6.1, 37, 'male', 'No', 'No', 'Caucasian', 'Yes', 'English', 'Hiking'),
  (6, 'Phoenix', 2, 5.7, 21, 'female', 'Yes', 'No', 'Hispanic', 'No', 'Spanish', 'Cooking'),
  (7, 'San Antonio', 8, 5.6, 49, 'male', 'No', 'Yes', 'African American', 'Yes', 'English', 'Fishing'),
  (8, 'San Diego', 1, 5.10, 26, 'female', 'Yes', 'Yes', 'Asian', 'No', 'Mandarin', 'Drawing'),
  (9, 'Dallas', 6, 6.0, 34, 'male', 'No', 'Yes', 'Caucasian', 'Yes', 'English', 'Running'),
  (10, 'San Jose', 5, 5.8, 31, 'female', 'Yes', 'Yes', 'Hispanic', 'No', 'Spanish', 'Singing'),
  (11, 'Austin', 3, 5.7, 28, 'female', 'No', 'Yes', 'African American', 'No', 'English', 'Dancing'),
  (12, 'Jacksonville', 7, 6.1, 44, 'male', 'Yes', 'No', 'Caucasian', 'Yes', 'English', 'Golf'),
  (13, 'Fort Worth', 2, 5.9, 23, 'male', 'No', 'Yes', 'Hispanic', 'No', 'Spanish', 'Painting'),
  (14, 'Columbus', 9, 6.3, 39, 'male', 'No', 'No', 'African American', 'Yes', 'English', 'Hiking'),
  (15, 'San Francisco', 4, 5.11, 27, 'female', 'Yes', 'Yes', 'Asian', 'No', 'Mandarin', 'Reading'),
  (16, 'Charlotte', 6, 5.6, 33, 'male', 'Yes', 'No', 'Caucasian', 'Yes', 'English', 'Soccer'),
  (17, 'Portland', 5, 5.11, 31, 'male', 'Yes', 'No', 'Caucasian', 'No', 'English', 'Gaming'),
  (18, 'Atlanta', 2, 5.8, 24, 'female', 'No', 'Yes', 'African American', 'No', 'English', 'Drawing'),
  (19, 'Miami', 8, 6.0, 44, 'male', 'No', 'Yes', 'Hispanic', 'Yes', 'Spanish', 'Swimming'),
  (20, 'Boston', 4, 5.9, 29, 'male', 'Yes', 'No', 'Caucasian', 'No', 'English', 'Running'),
  (21, 'San Francisco', 7, 6.3, 39, 'male', 'No', 'Yes', 'Asian', 'Yes', 'Mandarin', 'Traveling'),
  (22, 'Dallas', 3, 5.6, 27, 'female', 'Yes', 'Yes', 'African American', 'No', 'English', 'Photography'),
  (23, 'Seattle', 6, 6.2, 35, 'male', 'No', 'No', 'Caucasian', 'Yes', 'English', 'Camping'),
  (24, 'Las Vegas', 1, 5.7, 21, 'female', 'Yes', 'Yes', 'Hispanic', 'No', 'Spanish', 'Shopping'),
  (25, 'Phoenix', 9, 5.10, 47, 'male', 'No', 'No', 'African American', 'Yes', 'English', 'Gardening'),
  (26, 'New Orleans', 2, 5.9, 26, 'female', 'Yes', 'No', 'Caucasian', 'No', 'English', 'Painting'),
  (27, 'Austin', 5, 6.1, 33, 'male', 'No', 'Yes', 'Hispanic', 'Yes', 'Spanish', 'Playing guitar'),
  (28, 'Washington D.C.', 8, 5.11, 42, 'female', 'No', 'Yes', 'Caucasian', 'Yes', 'English', 'Skiing'),
  (29, 'Denver', 4, 5.8, 28, 'male', 'Yes', 'No', 'Caucasian', 'No', 'English', 'Playing basketball'),
  (30, 'San Diego', 6, 5.9, 31, 'female', 'No', 'Yes', 'Hispanic', 'Yes', 'Spanish', 'Cooking'),
  (31, 'New York', 9, 6.2, 37, 'male', 'No', 'No', 'African American', 'Yes', 'English', 'Photography'),
  (32, 'Los Angeles', 2, 5.6, 22, 'female', 'Yes', 'Yes', 'Asian', 'No', 'Mandarin', 'Video games'),
  (33, 'Houston', 5, 5.11, 34, 'male', 'No', 'Yes', 'Caucasian', 'Yes', 'English', 'Hiking'),
  (34, 'Chicago', 7, 6.1, 40, 'male', 'No', 'No', 'Hispanic', 'Yes', 'Spanish', 'Reading'),
  (35, 'Miami', 3, 5.7, 25, 'female', 'Yes', 'Yes', 'African American', 'No', 'English', 'Dancing'),
  (36, 'San Francisco', 8, 6.3, 43, 'male', 'No', 'Yes', 'Caucasian', 'Yes', 'English', 'Golfing'),
  (37, 'Dallas', 4, 5.10, 29, 'male', 'Yes', 'No', 'Hispanic', 'No', 'Spanish', 'Cooking'),
  (38, 'Philadelphia', 6, 5.8, 32, 'female', 'No', 'Yes', 'Caucasian', 'Yes', 'English', 'Singing'),
  (39, 'Atlanta', 2, 5.7, 24, 'male', 'Yes', 'Yes', 'African American', 'No', 'English', 'Playing piano'),
  (40, 'Boston', 5, 6.0, 35, 'male', 'No', 'No', 'Caucasian', 'Yes', 'English', 'Hiking'),
  (41, 'Seattle', 9, 5.11, 41, 'female', 'No', 'Yes', 'Asian', 'Yes', 'Mandarin', 'Traveling'),
  (42, 'Phoenix', 1, 5.6, 20, 'male', 'Yes', 'No', 'Hispanic', 'No', 'Spanish', 'Gaming'),
  (43, 'Denver', 4, 5.9, 30, 'female', 'Yes', 'Yes', 'Caucasian', 'No', 'English', 'Yoga'),
  (44, 'San Antonio', 7, 6.2, 38, 'male', 'No', 'Yes', 'African American', 'Yes', 'English', 'Fishing'),
  (45, 'New Orleans', 2, 5.8, 27, 'female', 'Yes', 'No', 'Caucasian', 'No', 'English', 'Cooking'),
  (46, 'Washington D.C.', 8, 6.1, 39, 'male', 'No', 'No', 'Hispanic', 'Yes', 'Spanish', 'Running'),
  (47, 'Portland', 3, 5.6, 26, 'female', 'Yes', 'No', 'Asian', 'No', 'Japanese', 'Drawing'),
  (48, 'Las Vegas', 6, 5.10, 33, 'male', 'No', 'Yes', 'Caucasian', 'Yes', 'English', 'Playing guitar'),
  (49, 'Austin', 4, 6.0, 28, 'male', 'Yes', 'No', 'Hispanic', 'No', 'English', 'Skiing'),
  (50, 'San Francisco', 9, 5.9, 37, 'female', 'No', 'Yes', 'Caucasian', 'Yes', 'English', 'Cooking');


-- Table 2: Conversations
USE mySoulmate; 
CREATE TABLE conversations (
  user_id1 INT,
  user_id2 INT,
  text TEXT,
  timestamp TIMESTAMP
);

INSERT INTO conversations (user_id1, user_id2, text, timestamp)
VALUES
  (1, 2, 'Hi there!', '2022-01-01 12:00:00'),
  (2, 1, 'Hey! How are you?', '2022-01-01 12:05:00'),
  (3, 2, 'Hey guys!', '2022-01-02 10:00:00'),
  (2, 3, 'What\'s up?', '2022-01-02 10:05:00'),
  (4, 2, 'Hey! How\'s it going?', '2022-01-03 08:00:00'),
  (2, 4, 'Good morning! I\'m doing well, thanks. How about you?', '2022-01-03 08:05:00'),
  (5, 2, 'Hello there!', '2022-01-04 14:00:00'),
  (2, 5, 'Hi! How can I help you?', '2022-01-04 14:05:00'),
  (6, 2, 'Hey man, what\'s new?', '2022-01-05 16:00:00'),
  (2, 6, 'Not much, just hanging out. How about you?', '2022-01-05 16:05:00'),
  (7, 2, 'Hi!', '2022-01-06 20:00:00'),
  (2, 7, 'Hey, what\'s going on?', '2022-01-06 20:05:00'),
  (8, 2, 'Hey there!', '2022-01-07 11:00:00'),
  (2, 8, 'Hi! What\'s up?', '2022-01-07 11:05:00'),
  (9, 2, 'Hi, how are you?', '2022-01-08 09:00:00'),
  (2, 9, 'Hey! I\'m good, thanks. How about you?', '2022-01-08 09:05:00'),
  (10, 2, 'Hey!', '2022-01-09 17:00:00'),
  (2, 10, 'Hi there! How can I help you?', '2022-01-09 17:05:00'),
  (11, 2, 'Hey, long time no see!', '2022-01-10 13:00:00'),
  (2, 11, 'Yeah, it\'s been a while! How have you been?', '2022-01-10 13:05:00'),
  (12, 2, 'Hi!', '2022-01-11 08:00:00'),
  (2, 12, 'Hey there! What\'s up?', '2022-01-11 08:05:00'),
  (13, 2, 'Hey, can we talk?', '2022-01-12 12:00:00'),
  (2, 13, 'Sure, what\'s on your mind?', '2022-01-12 12:05:00'),
  (15, 2, 'Hey there!', '2022-01-13 09:00:00'),
  (2, 15, 'Hi! How can I help you today?', '2022-01-13 09:05:00'),
  (16, 2, 'Hi, it\'s been a while!', '2022-01-14 14:00:00'),
  (2, 16, 'Yeah, it has! How have you been?', '2022-01-14 14:05:00'),
  (17, 2, 'Hey, what are you up to?', '2022-01-15 16:00:00'),
  (2, 17, 'Not much, just hanging out. How about you?', '2022-01-15 16:05:00'),
  (18, 2, 'Hey, can we meet up later?', '2022-01-16 19:00:00'),
  (2, 18, 'Sure, what time and where?', '2022-01-16 19:05:00'),
  (19, 2, 'Hey there!', '2022-01-17 11:00:00'),
  (2, 19, 'Hi! How can I assist you today?', '2022-01-17 11:05:00'),
  (20, 2, 'Hey, what do you think about the game last night?', '2022-01-18 22:00:00'),
  (2, 20, 'It was pretty intense! What did you think?', '2022-01-18 22:05:00'),
  (21, 2, 'Hey, are you available to chat?', '2022-01-19 15:00:00'),
  (2, 21, 'Yeah, what\'s going on?', '2022-01-19 15:05:00'),
  (22, 2, 'Hey there!', '2022-01-20 08:00:00'),
  (2, 22, 'Hi! How can I help you today?', '2022-01-20 08:05:00'),
  (23, 2, 'Hey, how are you doing?', '2022-01-21 12:00:00'),
  (2, 23, 'I\'m doing well, thanks for asking! How about you?', '2022-01-21 12:05:00'),
  (24, 2, 'Hey, what are your plans for the weekend?', '2022-01-22 18:00:00'),
  (2, 24, 'Not sure yet, how about you?', '2022-01-22 18:05:00'),
  (25, 10, 'Hey there!', '2022-02-02 09:00:00'),
  (10, 25, 'Hi! How can I assist you today?', '2022-02-02 09:05:00'),
  (30, 12, 'Hi, it\'s been a while!', '2022-02-05 14:00:00'),
  (12, 30, 'Yeah, it has! How have you been?', '2022-02-05 14:05:00'),
  (40, 13, 'Hey, what are you up to?', '2022-02-08 16:00:00'),
  (13, 40, 'Not much, just hanging out. How about you?', '2022-02-08 16:05:00'),
  (45, 14, 'Hey, can we meet up later?', '2022-02-11 19:00:00'),
  (14, 45, 'Sure, what time and where?', '2022-02-11 19:05:00'),
  (20, 16, 'Hey there!', '2022-02-15 11:00:00'),
  (16, 20, 'Hi! How can I help you today?', '2022-02-15 11:05:00'),
  (11, 17, 'Hey, what do you think about the game last night?', '2022-02-18 22:00:00'),
  (17, 11, 'It was pretty intense! What did you think?', '2022-02-18 22:05:00'),
  (50, 18, 'Hey, are you available to chat?', '2022-02-21 15:00:00'),
  (18, 50, 'Yeah, what\'s going on?', '2022-02-21 15:05:00'),
  (35, 22, 'Hey there!', '2022-02-24 08:00:00'),
  (22, 35, 'Hi! How can I assist you today?', '2022-02-24 08:05:00'),
  (15, 23, 'Hey, how are you doing?', '2022-02-27 12:00:00'),
  (23, 15, 'I\'m doing well, thanks for asking! How about you?', '2022-02-27 12:05:00'),
  (48, 24, 'Hey, what are your plans for the weekend?', '2022-03-02 18:00:00'),
  (24, 48, 'Not sure yet, how about you?', '2022-03-02 18:05:00'),
  (42, 19, 'Hey there, what are you up to?', '2022-03-05 10:00:00'),
  (19, 42, 'Not much, just finishing up some work. How about you?', '2022-03-05 10:05:00'),
  (27, 21, 'Hey, I was wondering if you could help me out with something?', '2022-03-08 13:00:00'),
  (21, 27, 'Sure, what do you need help with?', '2022-03-08 13:05:00'),
  (44, 26, 'Hey, have you watched that new movie yet?', '2022-03-11 17:00:00'),
  (26, 44, 'No, not yet. Is it good?', '2022-03-11 17:05:00'),
  (37, 28, 'Hey, what do you think about that new restaurant that just opened up?', '2022-03-14 20:00:00'),
  (28, 37, 'I haven\'t tried it yet, but I heard it\'s really good. Want to go there together sometime?', '2022-03-14 20:05:00'),
  (47, 29, 'Hey, how was your weekend?', '2022-03-17 11:00:00'),
  (29, 47, 'It was good, thanks! How was yours?', '2022-03-17 11:05:00'),
  (36, 31, 'Hey, have you finished that project yet?', '2022-03-20 14:00:00'),
  (31, 36, 'Not yet, I\'m still working on it. How about you?', '2022-03-20 14:05:00'),
  (49, 32, 'Hey, do you want to grab lunch together?', '2022-03-23 12:00:00'),
  (32, 49, 'Sure, where do you want to go?', '2022-03-23 12:05:00'),
  (41, 34, 'Hey, what are you doing this weekend?', '2022-03-26 16:00:00'),
  (34, 41, 'I don\'t have any plans yet, why?', '2022-03-26 16:05:00'),
  (38, 39, 'Hey there!', '2022-03-29 09:00:00'),
  (39, 38, 'Hi! How can I assist you today?', '2022-03-29 09:05:00'),
  (22, 43, 'Hey, did you hear about that new concert?', '2022-04-01 19:00:00'),
  (43, 22, 'No, what concert?', '2022-04-01 19:05:00');


-- Table 3: Passes
CREATE TABLE Passes (
  user_id1 INT,
  user_id2 INT,
  timestamp TIMESTAMP
);

INSERT INTO Passes (user_id1, user_id2, timestamp)
VALUES
  (1, 5, '2022-03-01 12:00:00'),
  (2, 6, '2022-03-01 12:05:00'),
  (3, 7, '2022-03-01 12:10:00'),
  (4, 8, '2022-03-01 12:15:00'),
  (5, 1, '2022-03-01 12:20:00'),
  (6, 2, '2022-03-01 12:25:00'),
  (7, 3, '2022-03-01 12:30:00'),
  (8, 4, '2022-03-01 12:35:00'),
  (9, 13, '2022-03-02 12:00:00'),
  (10, 14, '2022-03-02 12:05:00'),
  (11, 15, '2022-03-02 12:10:00'),
  (12, 16, '2022-03-02 12:15:00'),
  (13, 9, '2022-03-02 12:20:00'),
  (14, 10, '2022-03-02 12:25:00'),
  (15, 11, '2022-03-02 12:30:00'),
  (16, 12, '2022-03-02 12:35:00'),
  (17, 21, '2022-03-03 12:00:00'),
  (18, 22, '2022-03-03 12:05:00'),
  (19, 23, '2022-03-03 12:10:00'),
  (20, 24, '2022-03-03 12:15:00'),
  (21, 17, '2022-03-03 12:20:00'),
  (22, 18, '2022-03-03 12:25:00'),
  (23, 19, '2022-03-03 12:30:00'),
  (24, 20, '2022-03-03 12:35:00'),
  (25, 29, '2022-03-04 12:00:00'),
  (26, 30, '2022-03-04 12:05:00'),
  (27, 31, '2022-03-04 12:10:00'),
  (28, 32, '2022-03-04 12:15:00'),
  (29, 25, '2022-03-04 12:20:00'),
  (30, 26, '2022-03-04 12:25:00'),
  (31, 27, '2022-03-04 12:30:00'),
  (32, 28, '2022-03-04 12:35:00'),
  (33, 37, '2022-03-05 12:00:00');

-- Table 4: Likes
CREATE TABLE Likes (
  user_id1 INT NOT NULL,
  user_id2 INT NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  PRIMARY KEY (user_id1, user_id2)
);

INSERT INTO Likes (user_id1, user_id2, timestamp)
VALUES
  (1, 3, '2022-03-01 10:00:00'),
  (2, 5, '2022-03-01 11:00:00'),
  (3, 1, '2022-03-01 12:00:00'),
  (4, 6, '2022-03-02 10:00:00'),
  (5, 2, '2022-03-02 11:00:00'),
  (6, 4, '2022-03-02 12:00:00'),
  (7, 9, '2022-03-03 10:00:00'),
  (8, 10, '2022-03-03 11:00:00'),
  (9, 7, '2022-03-03 12:00:00'),
  (10, 8, '2022-03-04 10:00:00'),
  (11, 13, '2022-03-04 11:00:00'),
  (12, 15, '2022-03-04 12:00:00'),
  (13, 11, '2022-03-05 10:00:00'),
  (14, 16, '2022-03-05 11:00:00'),
  (15, 12, '2022-03-05 12:00:00'),
  (16, 14, '2022-03-06 10:00:00'),
  (17, 19, '2022-03-06 11:00:00'),
  (18, 20, '2022-03-06 12:00:00'),
  (19, 17, '2022-03-07 10:00:00'),
  (20, 18, '2022-03-07 11:00:00'),
  (21, 23, '2022-03-07 12:00:00'),
  (22, 25, '2022-03-08 10:00:00'),
  (23, 21, '2022-03-08 11:00:00'),
  (24, 26, '2022-03-08 12:00:00'),
  (25, 22, '2022-03-09 10:00:00'),
  (26, 24, '2022-03-09 11:00:00'),
  (27, 29, '2022-03-09 12:00:00'),
  (28, 30, '2022-03-10 10:00:00'),
  (29, 27, '2022-03-10 11:00:00'),
  (30, 28, '2022-03-10 12:00:00'),
  (31, 33, '2022-03-11 10:00:00'),
  (32, 35, '2022-03-11 11:00:00');

-- Table 5: Matches
CREATE TABLE Matches (
    user_id1 INT NOT NULL,
    user_id2 INT NOT NULL,
    request_date DATE,
    accept_date DATE,
    a_rematch BOOLEAN,
    PRIMARY KEY (user_id1, user_id2)
);
INSERT INTO Matches (user_id1, user_id2, request_date, accept_date, a_rematch) VALUES
(1, 2, '2022-01-01', '2022-01-02', 1),
(3, 4, '2022-01-03', '2022-01-04', 0),
(5, 6, '2022-01-05', '2022-01-06', 0),
(7, 8, '2022-01-07', '2022-01-08', 1),
(9, 10, '2022-01-09', '2022-01-10', 1),
(11, 12, '2022-01-11', '2022-01-12', 0),
(13, 14, '2022-01-13', '2022-01-14', 1),
(15, 16, '2022-01-15', '2022-01-16', 0),
(17, 18, '2022-01-17', '2022-01-18', 1),
(19, 20, '2022-01-19', '2022-01-20', 0),
(21, 22, '2022-01-21', '2022-01-22', 0),
(23, 24, '2022-01-23', '2022-01-24', 1),
(25, 26, '2022-01-25', '2022-01-26', 0),
(27, 28, '2022-01-27', '2022-01-28', 1),
(29, 30, '2022-01-29', '2022-01-30', 0),
(31, 32, '2022-01-31', '2022-02-01', 1),
(33, 34, '2022-02-02', '2022-02-03', 1),
(35, 36, '2022-02-04', '2022-02-05', 0),
(37, 38, '2022-02-06', '2022-02-07', 1),
(39, 40, '2022-02-08', '2022-02-09', 0),
(41, 42, '2022-02-10', '2022-02-11', 1)

--Table 6: Blocked Matches
CREATE TABLE Blocked_matches (
    user_id1 INT NOT NULL,
    user_id2 INT NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    reason VARCHAR(255) NOT NULL
);
INSERT INTO blocked_matches (user_id1, user_id2, timestamp, reason)
SELECT
    FLOOR(RAND() * 50) + 1,
    FLOOR(RAND() * 50) + 1,
    NOW(),
    CONCAT('Reason for blocking ', FLOOR(RAND() * 10) + 1)
FROM
    (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) a
CROSS JOIN
    (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) b;
    
-- Table 7 Hobbies
CREATE TABLE hobbies (
    user_id INT NOT NULL,
    hobby VARCHAR(255) NOT NULL
);

INSERT INTO hobbies (user_id, hobby)
SELECT
    FLOOR(RAND() * 50) + 1,
    hobbies_list.hobby
FROM
    (SELECT 'Hiking' AS hobby UNION ALL
     SELECT 'Dancing' UNION ALL
     SELECT 'Reading' UNION ALL
     SELECT 'Video games' UNION ALL
     SELECT 'Cooking' UNION ALL
     SELECT 'Fishing' UNION ALL
     SELECT 'Drawing' UNION ALL
     SELECT 'Running' UNION ALL
     SELECT 'Singing' UNION ALL
     SELECT 'Golf' UNION ALL
     SELECT 'Painting' UNION ALL
     SELECT 'Soccer' UNION ALL
     SELECT 'Gaming' UNION ALL
     SELECT 'Swimming' UNION ALL
     SELECT 'Traveling' UNION ALL
     SELECT 'Photography' UNION ALL
     SELECT 'Camping' UNION ALL
     SELECT 'Shopping' UNION ALL
     SELECT 'Gardening' UNION ALL
     SELECT 'Playing guitar' UNION ALL
     SELECT 'Skiing' UNION ALL
     SELECT 'Playing basketball' UNION ALL
     SELECT 'Golfing' UNION ALL
     SELECT 'Playing piano' UNION ALL
     SELECT 'Yoga') hobbies_list
CROSS JOIN
    (SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) a
LIMIT 50;


-- Table 8: preferences
CREATE TABLE preferences (
    user_id INT,
    location VARCHAR(255),
    religiosity VARCHAR(255),
    height INT,
    age INT,
    gender VARCHAR(255),
    smokes VARCHAR(255),
    drinks VARCHAR(255),
    race VARCHAR(255),
    has_kids VARCHAR(255),
    language VARCHAR(255),
    hobby VARCHAR(255)
);

INSERT INTO preferences VALUES
  (1, 'New York', 'Very Religious', 175, 27, 'Male', 'No', 'Yes', 'Black', 'No', 'English', 'Reading'), 
  (2, 'California', 'Not Religious', 165, 35, 'Female', 'No', 'No', 'White', 'Yes', 'Spanish', 'Singing'),
  (3, 'Texas', 'Somewhat Religious', 180, 29, 'Male', 'Yes', 'Yes', 'Hispanic', 'No', 'English', 'Sports'),
  (4, 'Florida', 'Very Religious', 170, 33, 'Female', 'No', 'No', 'White', 'Yes', 'English', 'Traveling'),
  (5, 'New York', 'Not Religious', 160, 24, 'Female', 'No', 'No', 'Asian', 'No', 'Mandarin', 'Dancing'),
  (6, 'Texas', 'Somewhat Religious', 182, 31, 'Male', 'Yes', 'Yes', 'Hispanic', 'Yes', 'Spanish', 'Video Games'),
  (7, 'California', 'Very Religious', 175, 28, 'Male', 'No', 'Yes', 'Black', 'No', 'English', 'Cooking'),
  (8, 'New York', 'Not Religious', 170, 36, 'Female', 'No', 'No', 'White', 'Yes', 'English', 'Music'),
  (9, 'Florida', 'Somewhat Religious', 165, 26, 'Male', 'No', 'No', 'Asian', 'No', 'English', 'Movies'),
  (10, 'Texas', 'Very Religious', 185, 30, 'Female', 'Yes', 'No', 'Hispanic', 'No', 'Spanish', 'Gardening'),
  (11, 'California', 'Not Religious', 172, 25, 'Male', 'No', 'Yes', 'White', 'No', 'English', 'Reading'),
  (12, 'Florida', 'Somewhat Religious', 180, 34, 'Female', 'No', 'No', 'Black', 'Yes', 'English', 'Sports'),
  (13, 'New York', 'Very Religious', 168, 27, 'Male', 'No', 'Yes', 'Asian', 'No', 'English', 'Music'),
  (14, 'Texas', 'Not Religious', 172, 31, 'Female', 'No', 'No', 'White', 'Yes', 'Spanish', 'Dancing'),
  (15, 'California', 'Somewhat Religious', 175, 29, 'Male', 'No', 'Yes', 'Asian', 'No', 'English', 'Traveling'),
  (16, 'Florida', 'Very Religious', 180, 33, 'Female', 'Yes', 'Yes', 'Black', 'Yes', 'English', 'Video Games'),
  (17, 'New York', 'Not Religious', 165, 26, 'Male', 'No', 'No', 'Asian', 'No', 'Mandarin', 'Sports'),
  (18, 'New York', 'Somewhat religious', 175, 28, 'Male', 'No', 'Yes', 'Asian', 'No', 'English', 'Photography'),
  (19, 'Los Angeles', 'Very religious', 170, 32, 'Female', 'No', 'Yes', 'Hispanic', 'Yes', 'Spanish', 'Hiking'),
  (20, 'Chicago', 'Not religious', 180, 24, 'Male', 'Yes', 'No', 'Caucasian', 'No', 'English', 'Cooking'),
  (21, 'Houston', 'Moderate', 160, 26, 'Female', 'No', 'No', 'African American', 'No', 'English', 'Reading'),
  (22, 'New York, NY', 'Not religious', 6.2, 32, 'Male', 'No', 'No', 'African American', 'No', 'English', 'Reading'),
  (23, 'Houston, TX', 'Very religious', 5.6, 41, 'Female', 'No', 'No', 'Caucasian', 'Yes', 'English', 'Traveling'),
  (24, 'Miami, FL', 'Somewhat religious', 5.9, 27, 'Male', 'No', 'Occasionally', 'Hispanic', 'No', 'Spanish', 'Cooking'),
  (25, 'San Francisco, CA', 'Very religious', 5.7, 43, 'Female', 'No', 'No', 'Asian', 'No', 'English', 'Yoga'),
  (26, 'Boston, MA', 'Not religious', 6.0, 31, 'Male', 'No', 'No', 'African American', 'Yes', 'English', 'Hiking'),
  (27, 'Phoenix, AZ', 'Somewhat religious', 5.8, 25, 'Female', 'No', 'Socially', 'Caucasian', 'No', 'English', 'Photography'),
  (28, 'Seattle, WA', 'Very religious', 5.5, 38, 'Male', 'No', 'No', 'Hispanic', 'Yes', 'English', 'Playing guitar'),
  (29, 'Austin, TX', 'Not religious', 6.3, 29, 'Female', 'No', 'No', 'Asian', 'No', 'English', 'Singing'),
  (30, 'Las Vegas, NV', 'Very religious', 5.4, 37, 'Male', 'No', 'No', 'Caucasian', 'Yes', 'English', 'Watching sports'),
  (31, 'Portland, OR', 'Somewhat religious', 5.9, 33, 'Female', 'No', 'Socially', 'African American', 'No', 'English', 'Dancing'),
  (32, 'San Diego, CA', 'Not religious', 6.1, 30, 'Male', 'No', 'No', 'Hispanic', 'Yes', 'English', 'Playing video games'),
  (33, 'Dallas, TX', 'Very religious', 5.7, 42, 'Female', 'No', 'No', 'Asian', 'No', 'English', 'Cooking'),
  (34, 'Atlanta, GA', 'Somewhat religious', 5.8, 26, 'Male', 'No', 'Occasionally', 'Caucasian', 'Yes', 'English', 'Playing basketball'),
  (35, 'San Antonio, TX', 'Not religious', 6.2, 34, 'Female', 'No', 'No', 'African American', 'No', 'English', 'Watching TV'),
  (36, 'Austin, TX', 'Moderate', 6.0, 29, 'Male', 'No', 'Yes', 'Hispanic', 'No', 'English', 'Cooking'),
  (37, 'Miami, FL', 'Very religious', 5.6, 36, 'Female', 'No', 'No', 'White', 'Yes', 'Spanish', 'Reading'),
  (38, 'Portland, OR', 'Not religious', 5.9, 42, 'Male', 'No', 'Yes', 'Asian', 'No', 'English', 'Hiking'),
  (39, 'Boston, MA', 'Moderate', 5.8, 31, 'Female', 'No', 'Yes', 'White', 'No', 'English', 'Photography'),
  (40, 'Denver, CO', 'Somewhat religious', 6.2, 28, 'Male', 'No', 'Yes', 'White', 'No', 'English', 'Gaming'),
  (41, 'Los Angeles, CA', 'Not religious', 5.5, 27, 'Female', 'No', 'No', 'Hispanic', 'No', 'English', 'Traveling'),
  (42, 'Philadelphia, PA', 'Very religious', 6.1, 39, 'Male', 'No', 'Yes', 'Black', 'Yes', 'English', 'Writing'),
  (43, 'San Francisco, CA', 'Moderate', 5.9, 33, 'Female', 'No', 'Yes', 'Asian', 'No', 'English', 'Art'),
  (44, 'Seattle, WA', 'Not religious', 5.11, 26, 'Male', 'No', 'No', 'White', 'No', 'English', 'Cooking'),
  (45, 'Chicago, IL', 'Somewhat religious', 5.7, 30, 'Female', 'No', 'Yes', 'Hispanic', 'No', 'English', 'Dancing'),
  (46, 'New Orleans, LA', 'Moderate', 5.8, 29, 'Male', 'No', 'Yes', 'Black', 'No', 'English', 'Sports'),
  (47, 'San Diego, CA', 'Not religious', 6.3, 35, 'Female', 'No', 'Yes', 'Asian', 'No', 'English', 'Reading'),
  (48, 'Dallas, TX', 'Very religious', 5.6, 40, 'Male', 'No', 'No', 'Hispanic', 'Yes', 'Spanish', 'Cooking'),
  (49, 'Miami, FL', 'Moderate', 6.1, 33, 'Female', 'No', 'Yes', 'White', 'No', 'English', 'Gardening'),
  (50, 'Austin', 7, 182, 36, 'M', 'No', 'Yes', 'Caucasian', 'Yes', 'English', 'Traveling');

  