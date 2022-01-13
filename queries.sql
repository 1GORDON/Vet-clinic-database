/*Queries that provide answers to the questions from all projects.*/


SELECT * from animals WHERE name LIKE '%mon';

SELECT name from animals WHERE date_of_birth BETWEEN '1-1-2016' AND '1-1-2019';

SELECT name from animals WHERE neutered='true' AND escape_attempts < 3;

SELECT date_of_birth from animals WHERE name='Agumon' OR name='Pickachu';

SELECT name,escape_attempts from animals WHERE weight_Kg > 10.5;

SELECT * from animals WHERE neutered=true;

SELECT * from animals WHERE NOT name='Gabumon';

SELECT * from animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;

--Query and Update animals table

SELECT COUNT(*) FROM animals;

SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;

SELECT AVG(weight_kg) FROM animals;

SELECT neutered FROM animals WHERE escape_attempts IN 
(SELECT MAX(escape_attempts) FROM animals);

SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;

SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth>='1990-1-1' AND date_of_birth<'2000-1-1' GROUP BY species;

--Queries using JOIN

SELECT animals.name FROM animals 
JOIN owners ON animals.owners_id = owners.id WHERE owners.full_name = 'Melody Pond';

SELECT animals.*, species.name AS species_name FROM animals 
JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';

SELECT animals.name AS animal_name, owners.fulL_name AS owner_name FROM owners 
LEFT JOIN animals ON owners.id = animals.owners_id;

SELECT species.name, COUNT(*) FROM animals 
JOIN species ON species.id = animals.species_id GROUP BY species.name;

SELECT animals.name AS animal_name, owners.full_name AS owner_name, species.name AS species_name FROM animals
JOIN species ON species.id = animals.species_id JOIN owners ON owners.id = animals.owners_id WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell';

SELECT * FROM animals
JOIN owners ON animals.owners_id = owners.id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;

SELECT owners.full_name, COUNT(animals.name) AS num_animals FROM owners
LEFT JOIN animals ON owners.id = animals.owners_id GROUP BY owners.full_name ORDER BY num_animals DESC;