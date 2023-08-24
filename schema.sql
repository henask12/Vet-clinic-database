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

-- First, drop the existing foreign key constraints if any
ALTER TABLE animals
DROP CONSTRAINT IF EXISTS fk_species;

ALTER TABLE animals
DROP CONSTRAINT IF EXISTS fk_owner;

-- Drop the column species
ALTER TABLE animals
DROP COLUMN species;

-- Add the new columns species_id and owner_id
ALTER TABLE animals
ADD COLUMN species_id integer REFERENCES species(id),
ADD COLUMN owner_id integer REFERENCES owners(id);

-- Recreate the foreign key constraints
ALTER TABLE animals
ADD CONSTRAINT fk_species FOREIGN KEY (species_id) REFERENCES species(id),
ADD CONSTRAINT fk_owner FOREIGN KEY (owner_id) REFERENCES owners(id);

-- Create the vets table
CREATE TABLE vets (
    id serial PRIMARY KEY,
    name varchar(255),
    age integer,
    date_of_graduation date
);