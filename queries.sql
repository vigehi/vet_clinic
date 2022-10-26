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

-- Transactions and Delete and update 
Begin;

Update animals
Set species = 'unspecified'

Rollback;


BEGIN;

UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';

UPDATE animals
SET species = 'pokemon'
WHERE Not name LIKE '%mon';

COMMIT;

BEGIN;

DELETE FROM animals;

ROLLBACK;

BEGIN;

DELETE FROM animals
WHERE date_of_birth > '2022-01-01'::date;

SAVEPOINT savepoint1;

UPDATE animals
SET  weight_kg =  weight_kg * -1;
ROLLBACK TO savepoint1;

-- How many animals are there? 

SELECT count (*) 
FROM animals;

-- How many animals have never tried to escape?

SELECT count (*) 
FROM animals
WHERE escape_attempts = 0;

-- What is the average weight of animals?

SELECT avg (weight_kg) 
FROM animals;

-- Who escapes the most, neutered or not neutered animals?

SELECT max (escape_attempts) 
FROM animals
GROUP BY neutered;

-- What is the minimum and maximum weight of each type of animal?

SELECT max(weight_kg) ,
 min(weight_kg) 
FROM animals
GROUP BY species;

-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?

SELECT avg(escape_attempts) 
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01'::date AND '2000-12-31'::date
GROUP BY species;


 -- What animals belong to Melody Pond?

SELECT * FROM animals  INNER JOIN owners  ON animals.owner_id = owners.id 
WHERE owners.full_name = 'Melody Pond';

-- List of all animals that are pokemon (their type is Pokemon).

SELECT * FROM animals  INNER JOIN species  ON animals.species_id = species.id
WHERE species.name = 'Pokemon';

 -- List all owners and their animals, remember to include those that don't own any animal.

SELECT name , full_name FROM animals  INNER JOIN owners  ON animals.owner_id = owners.id;

-- How many animals are there per species?

SELECT count (*)  FROM animals GROUP BY species_id;

 -- List all Digimon owned by Jennifer Orwell.

SELECT * FROM animals  JOIN owners  ON animals.owner_id = owners.id
INNER JOIN species  ON animals.species_id = species.id
WHERE owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon';

-- List all animals owned by Dean Winchester that haven't tried to escape.

SELECT * FROM animals JOIN owners ON animals.owner_id = owners.id
WHERE animals.escape_attempts = 0 AND owners.full_name = 'Dean Winchester';

-- Who owns the most animals?
SELECT owners.full_name  FROM owners  JOIN animals  ON owners.id = animals.owner_id
GROUP BY full_name  ORDER BY COUNT(animals.owner_id) DESC  LIMIT 1;


-- Who was the last animal seen by William Tatcher?

SELECT animals.name, vets.name, data_of_visit FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
WHERE vets.name = 'William Tatcher'
ORDER BY data_of_visit 
LIMIT 1;

-- How many different animals did Stephanie Mendez see?

SELECT COUNT(animals.name)
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
WHERE vets.name = 'Stephanie Mendez';

-- List all vets and their specialties, including vets with no specialties.

SELECT * FROM vets
JOIN specialization ON vets.id = specialization.vet_id;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.

SELECT animals.name, data_of_visit
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
WHERE vets.name = 'Stephanie Mendez'
AND visits.data_of_visit BETWEEN '2020-04-01'::date AND '2020-08-30'::date;

-- What animal has the most visits to vets?

SELECT animals.name
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
GROUP by animals.name
ORDER by COUNT(animals.name)  DESC
LIMIT 1;



-- Who was Maisy Smith's first visit?

SELECT animals.name, vets.name, data_of_visit
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
WHERE vets.name = 'Maisy Smith'
ORDER by data_of_visit ASC
LIMIT 1 ;

-- Details for most recent visit: animal information, vet information, and date of visit.

SELECT *
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
ORDER BY visits.data_of_visit DESC;

-- How many visits were with a vet that did not specialize in that animal's species?

SELECT COUNT(visits.animals_id)
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN specialization ON specialization.species_id = vets.id
WHERE specialization.species_id IS NULL;

-- What specialty should Maisy Smith consider getting? Look for the species she gets the most.

SELECT COUNT(visits.animals_id), animals.name
FROM visits
JOIN vets ON visits.vets_id = vets.id
JOIN animals ON visits.animals_id = animals.id
WHERE vets.name = 'Maisy Smith'
GROUP by animals.name
ORDER by COUNT(animals.name) DESC
LIMIT 1 ;

