# Create database for the exercise
CREATE DATABASE IF NOT EXISTS sqlbasics;

# Create table groups with id, name, location, start_date, max_participants
CREATE TABLE IF NOT EXISTS groups (
	id INT(4) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    location VARCHAR(50) NOT NULL,
    start_date DATE NOT NULL,
    max_participants INT NOT NULL
);

# Create table learners with id, name, email, active
CREATE TABLE IF NOT EXISTS learners (
	id INT(4) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    active BOOLEAN NOT NULL
);

# Create table coaches with id, name
CREATE TABLE IF NOT EXISTS coaches (
	id INT(4) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);



# Insert dummy data in groups
INSERT INTO groups (name, location, start_date, max_participants)
VALUES ('Verou 3', 'Gent', '2021-12-14', '25');

INSERT INTO groups (name, location, start_date, max_participants)
VALUES ('Arai 3', 'Gent', '2022-3-28', '25');

INSERT INTO groups (name, location, start_date, max_participants)
VALUES ('Yu 2.31', 'Brussel', '2022-6-6', '25');



# Insert dummy data in learners
INSERT INTO learners (name, email, active) 
VALUES ('Muhammet', 'mowtje@becode.com', true);

INSERT INTO learners (name, email, active) 
VALUES ('ProfessorOak', 'pokedexmaster@becode.com', false);

INSERT INTO learners (name, email, active) 
VALUES ('learnerX', 'itsover9000@becode.com', true);



# Insert dummy data in learners
INSERT INTO coaches (name) VALUES ('Bert');
INSERT INTO coaches (name) VALUES ('Basile');
INSERT INTO coaches (name) VALUES ('Sicco');
INSERT INTO coaches (name) VALUES ('Tim');