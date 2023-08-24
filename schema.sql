/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    name varchar(100)
);

--vet_clinic database CREATE
CREATE DATABASE vet_clinic
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- animals table CREATE
    	CREATE TABLE animals (
    id serial PRIMARY KEY,
    name varchar(255),
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg decimal
);

-- altering animals table 
ALTER TABLE animals
ADD COLUMN species varchar(255);

-- Create the owners table
CREATE TABLE owners (
    id serial PRIMARY KEY,
    full_name varchar(255),
    age integer
);

-- Create the species table
CREATE TABLE species (
    id serial PRIMARY KEY,
    name varchar(255)
);