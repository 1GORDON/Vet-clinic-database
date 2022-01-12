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
