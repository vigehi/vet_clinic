/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic;

CREATE TABLE animals (
id INT GENERATED ALWAYS AS IDENTITY,
name varchar(100), 
date_of_birth date,
escape_attempts int,
neutered boolean,
weight_kg decimal,
PRIMARY KEY(id)
);

Alter table animals  add column species Varchar(100);

CREATE TABLE owners (
id INT GENERATED ALWAYS AS IDENTITY,
full_name varchar(100),
age INT,
PRIMARY KEY(id)
);

CREATE TABLE species  (
id INT GENERATED ALWAYS AS IDENTITY,
name varchar(100),
PRIMARY KEY(id)
);

Alter table animals drop column species;

Alter table animals add column species_id integer references species(id);
Alter table animals add column owner_id integer references owners(id);

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1 WHERE NOT name LIKE '%mon';

UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';
UPDATE animals SET owner_id = 2 WHERE name = 'Gabumon' OR name = 'Pikachu';
UPDATE animals SET owner_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';
UPDATE animals SET owner_id = 4 WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';
UPDATE animals SET owner_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';

CREATE TABLE vets   (
id INT GENERATED ALWAYS AS IDENTITY,
name varchar(100),
age INT,
date_of_graduation date,
PRIMARY KEY(id)
);

CREATE TABLE specialization (
    vet_id integer references vets(id),
    species_id integer references species(id)
    );

CREATE TABLE visits (
    animals_id integer references animals(id) ,
    vets_id integer references vets(id) ,
    data_of_visit date
);