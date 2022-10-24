/*Queries that provide answers to the questions from all projects.*/
Select * from animals where name like '%mon';

Select name from animals 
where date_of_birth 
between '2016-01-01'::date and '2019-12-31'::date;

Select name from animals 
where neutered = 'true'  AND escape_attempts < 3;

Select date_of_birth from animals 
where name = 'Agumon' OR name = 'Pikachu';

Select name, escape_attempts from animals 
where weight_kg > 10.5;

Select * from animals 
where neutered = 'true';

Select * from animals 
where name != 'Gabumon';

Select * from animals 
where weight_kg >= 10.4 AND  weight_kg <= 17.3;
