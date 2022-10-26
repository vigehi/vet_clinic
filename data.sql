/* Populate database with sample data. */

INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg)
VALUES ('Agumon', '3-feb-2020', 0, true, 10.23),
       ('Gabumon', '15-nov-2018', 2, true, 8),
       ('Pikachu', '7-jan-2021', 1, false, 15.04),
       ('Devimon', '12-may-2017', 5, true, 11);
       
INSERT INTO animals (name,date_of_birth,escape_attempts,neutered, weight_kg)
VALUES ('Charmander', '8-feb-2020', 0, false, -11),
       ('Plantmon', '15-nov-2021', 2, true, -5.7),  
       ('Squirtle', '2-apr-1993', 3, false, -12.13),
       ('Angemon', '12-jun-2005', 1, true, -45),
       ('Boarmon', '7-jun-2005', 7, true, 20.4),
       ( 'Blossom', '13-oct-1998', 3, true, 17),
       ( 'Ditto', '14-may-2022', 4, true, 22);

INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
       ('Jennifer Orwell', 19),
	   ('Bob', 45),
	   ('Melody Pond', 77),
	   ('Dean Winchester', 14),
	   ('Jodie Whittaker ', 38);

INSERT INTO species (name)
VALUES ('Pokemon'),
       ('Digimon');

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '23-apr-2000'),
       ('Maisy Smith', 26, '17-jan-2019'),
       ('Stephanie Mendez', 64, '4-may-1981'),
       ('Jack Harkness', 38, '8-jun-2008');

INSERT INTO specialization (vet_id, species_id)
VALUES (1,1),
       (3,2),
       (3,1),
       (4,2);

INSERT INTO visits (animals_id,vets_id, data_of_visit)
VALUES (1,1,'24-may-2020'), 
       (1,3,'22-jul-2020'), 
       (2,4,'24-may-2021'), 
       (3,2,'5-jan-2020'), 
       (3,2,'8-mar-2020'), 
       (3,2,'14-may-2020'), 
       (4,3,'4-may-2021'), 
       (5,4,'24-feb-2021'), 
       (6,2,'21-dec-2019'), 
       (6,1,'10-aug-2020'), 
       (6,2,'7-apr-2021'), 
       (7,3,'29-sep-2019'), 
       (8,4,'3-oct-2020'), 
       (8,4,'4-nov-2020'), 
       (9,2,'24-jan-2019'), 
       (9,2,'15-may-2019'), 
       (9,2,'27-feb-2020'),
       (9,2,'3-aug-2020'),
       (10,3,'24-may-2020'),
       (10,1,'11-jan-2021');       