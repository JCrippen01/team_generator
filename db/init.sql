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
(10, 'Daniel', 'Thomas', 'daniel.thomas@example.com');
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
