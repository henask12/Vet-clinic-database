/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');

-- INSERT data on animals table 
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES ('Agumon', '2020-02-03', 0, true, 10.23),
       ('Gabumon', '2018-11-15', 2, true, 8),
       ('Pikachu', '2021-01-07', 1, false, 15.04),
       ('Devimon', '2017-05-12', 5, true, 11);

-- Inserting new data on the tables
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES
  ('Charmander', '2020-02-08', 0, false, -11, NULL),
  ('Plantmon', '2021-11-15', 2, true, -5.7, NULL),
  ('Squirtle', '1993-04-02', 3, false, -12.13, NULL),
  ('Angemon', '2005-06-12', 1, true, -45, NULL),
  ('Boarmon', '2005-06-07', 7, true, 20.4, NULL),
  ('Blossom', '1998-10-13', 3, true, 17, NULL),
  ('Ditto', '2022-05-14', 4, true, 22, NULL);

-- Insert data into owners table
INSERT INTO owners (full_name, age)
VALUES
    ('Sam Smith', 34),
    ('Jennifer Orwell', 19),
    ('Bob', 45),
    ('Melody Pond', 77),
    ('Dean Winchester', 14),
    ('Jodie Whittaker', 38);