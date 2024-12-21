create database teams;

\connect teams


-- Drop tables if they already exist
DROP TABLE IF EXISTS Teams;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Animals;

-- Create Students table
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(60) NOT NULL,
    last_name VARCHAR(60) NOT NULL,
    email VARCHAR(60) NOT NULL
);
-- Create Animals table
CREATE TABLE Animals (
    animal_id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description TEXT
);
-- Create Teams table
CREATE TABLE Teams (
    team_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id),
    animal_id INT REFERENCES Animals(animal_id)
);
-- Insert data into Students table
INSERT INTO Students (student_id, first_name, last_name, email) VALUES
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 'jane.smith@example.com'),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com'),
(4, 'Emily', 'Davis', 'emily.davis@example.com'),
(5, 'Sarah', 'Brown', 'sarah.brown@example.com'),
(6, 'Chris', 'Wilson', 'chris.wilson@example.com'),
(7, 'Amanda', 'Taylor', 'amanda.taylor@example.com'),
(8, 'Matthew', 'Martinez', 'matthew.martinez@example.com'),
(9, 'Jessica', 'Anderson', 'jessica.anderson@example.com'),
(10, 'Daniel', 'Thomas', 'daniel.thomas@example.com'),
(11, 'Laura', 'Garcia', 'laura.garcia@example.com'),
(12, 'James', 'Martinez', 'james.martinez@example.com'),
(13, 'Olivia', 'Hernandez', 'olivia.hernandez@example.com'),
(14, 'Ethan', 'Lopez', 'ethan.lopez@example.com'),
(15, 'Sophia', 'Gonzalez', 'sophia.gonzalez@example.com'),
(16, 'William', 'Perez', 'william.perez@example.com'),
(17, 'Isabella', 'Wilson', 'isabella.wilson@example.com'),
(18, 'Alexander', 'Anderson', 'alexander.anderson@example.com'),
(19, 'Mia', 'Thomas', 'mia.thomas@example.com'),
(20, 'Benjamin', 'Taylor', 'benjamin.taylor@example.com'),
(21, 'Charlotte', 'Moore', 'charlotte.moore@example.com'),
(22, 'Mason', 'Jackson', 'mason.jackson@example.com'),
(23, 'Amelia', 'White', 'amelia.white@example.com'),
(24, 'Lucas', 'Harris', 'lucas.harris@example.com'),
(25, 'Harper', 'Clark', 'harper.clark@example.com'),
(26, 'Henry', 'Lewis', 'henry.lewis@example.com'),
(27, 'Evelyn', 'Robinson', 'evelyn.robinson@example.com'),
(28, 'Aiden', 'Walker', 'aiden.walker@example.com'),
(29, 'Ella', 'Young', 'ella.young@example.com'),
(30, 'Logan', 'Allen', 'logan.allen@example.com'),
(31, 'Lily', 'King', 'lily.king@example.com'),
(32, 'Jack', 'Wright', 'jack.wright@example.com');
-- Insert data into Animals table
INSERT INTO Animals (animal_id, name, description) VALUES
(1, 'Dog', 'A friendly domestic animal'),
(2, 'Cat', 'An independent and curious animal'),
(3, 'Parrot', 'A colorful bird that can mimic sounds'),
(4, 'Rabbit', 'A small, fluffy mammal'),
(5, 'Fish', 'A popular pet for aquariums'),
(6, 'Turtle', 'A slow-moving reptile with a shell'),
(7, 'Hamster', 'A small, cute rodent'),
(8, 'Lizard', 'A scaly reptile often kept as a pet'),
(9, 'Horse', 'A large, majestic mammal'),
(10, 'Snake', 'A slithery reptile');
-- Insert data into Teams table
INSERT INTO Teams (team_id, student_id, animal_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);
