/*Queries that provide answers to the questions from all projects.*/


SELECT * from animals WHERE name LIKE '%mon';

SELECT name from animals WHERE date_of_birth BETWEEN '1-1-2016' AND '1-1-2019';

SELECT name from animals WHERE neutered='true' AND escape_attempts < 3;

SELECT date_of_birth from animals WHERE name='Agumon' OR name='Pickachu';

SELECT name,escape_attempts from animals WHERE weight_Kg > 10.5;

SELECT * from animals WHERE neutered=true;

SELECT * from animals WHERE NOT name='Gabumon';

SELECT * from animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3;
