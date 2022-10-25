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