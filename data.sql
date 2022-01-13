/* Populate database with sample data. */

INSERT INTO animals (
    name, 
    date_of_birth, 
    escape_attempts, 
    neutered, 
    weight_kg
    ) VALUES (
        'Agumon', 
        '3-2-2020', 
        '0', 
        'true', 
        '10.23'
    );


INSERT INTO animals (
    name, 
    date_of_birth, 
    escape_attempts, 
    neutered, 
    weight_kg
    ) VALUES (
        'Gabumon', 
        '15-11-2018', 
        '2', 
        'true', 
        '8.0'
    );

INSERT INTO animals (
    name, 
    date_of_birth, 
    escape_attempts, 
    neutered, 
    weight_kg
    ) VALUES (
        'Pikachu', 
        '7-1-2021', 
        '1', 
        'false', 
        '15.04'
    );

INSERT INTO animals (
    name, 
    date_of_birth, 
    escape_attempts, 
    neutered, 
    weight_kg
    ) VALUES (
        'Devimon', 
        '12-5-2017', 
        '5', 
        'true', 
        '11.0'
    );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Charmander',
        '2020-2-8',
        0,
        false,
        -11
    );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Plantmon',
        '2022-11-15',
        2,
        true,
        -5.7
    );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Squirtle',
        '1993-4-2',
        3,
        false,
        -12.13
    );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Angemon',
        '2005-6-12',
        1,
        true,
        -45
    );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Boarmon',
        '2005-6-7',
        7,
        true,
        20.4
    );

INSERT INTO animals (
    name,
    date_of_birth,
    escape_attempts,
    neutered,
    weight_kg
    ) VALUES (
        'Blossom',
        '1998-10-13',
        3,
        true,
        17
    );

-- Owners table data

INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Sam Smith',
        34
    );

INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Jennifer Orwell',
        19
    );

INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Bob',
        45
    );

INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Melody Pond',
        77
    );

INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Dean Winchester',
        14
    );

INSERT INTO owners (
    full_name,
    age
    ) VALUES (
        'Jodie Whittaker',
        38
    );

--Species table data

INSERT INTO species (
    name
    ) VALUES (
        'Pokemon'
    );

INSERT INTO species (
    name
    ) VALUES (
        'Digimon'
    );

--Modify inserted animals so it includes the species_id value:

UPDATE animals SET species_id = 1;
UPDATE animals SET species_id = 2 WHERE id=1;
UPDATE animals SET species_id = 2 WHERE id=2;
UPDATE animals SET species_id = 2 WHERE id=3;
UPDATE animals SET species_id = 2 WHERE id=4;
UPDATE animals SET species_id = 2 WHERE id=7;

--Modify your inserted animals to include owner information (owner_id):

UPDATE animals SET owners_id = 1 WHERE name='Agumon';
UPDATE animals SET owners_id = 2 WHERE name='Gabumon';
UPDATE animals SET owners_id = 2 WHERE name='Pikachu';
UPDATE animals SET owners_id = 3 WHERE name='Devimon';
UPDATE animals SET owners_id = 3 WHERE name='Plantmon';
UPDATE animals SET owners_id = 4 WHERE name='Charmander';
UPDATE animals SET owners_id = 4 WHERE name='Squirtle';
UPDATE animals SET owners_id = 4 WHERE name='Blossom';
UPDATE animals SET owners_id = 5 WHERE name='Angemon';       
UPDATE animals SET owners_id = 5 WHERE name='Boarmon';

--Insert data for vets

INSERT INTO vets (
    name,
    age,
    date_of_graduation
    ) VALUES
    ('Vet William Tatcher', 45, '2000-4-23'),
    ('Vet Maisy Smith', 26, '2019-1-17'),
    ('Vet Stephanie Mendez', 64, '1981-5-4'),
    ('Vet Jack Harkness', 38, '2008-6-8');

--Insert data for specialization

INSERT INTO specializations (
    species_id,
    vets_id
    ) VALUES
    (1, 1),
    (1, 3),
    (2, 3),
    (2, 4);

--Insert data for visits

INSERT INTO visits (
    animals_id,
    vets_id,
    date_of_visit
    ) VALUES
    ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2020-5-24'),
    ((SELECT id FROM animals WHERE name = 'Agumon'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2020-7-22'),
    ((SELECT id FROM animals WHERE name = 'Gabumon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2021-2-2'),
    ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-1-5'),
    ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-3-8'),
    ((SELECT id FROM animals WHERE name = 'Pikachu'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-5-14'),
    ((SELECT id FROM animals WHERE name = 'Devimon'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2021-5-4'),
    ((SELECT id FROM animals WHERE name = 'Charmander'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2021-2-24'),
    ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-12-21'),
    ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2020-8-10'),
    ((SELECT id FROM animals WHERE name = 'Plantmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2021-4-7'),
    ((SELECT id FROM animals WHERE name = 'Squirtle'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2019-9-29'),
    ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2020-10-3'),
    ((SELECT id FROM animals WHERE name = 'Angemon'), (SELECT id FROM vets WHERE name = 'Vet Jack Harkness'), '2020-11-4'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-1-24'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2019-5-15'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-2-27'),
    ((SELECT id FROM animals WHERE name = 'Boarmon'), (SELECT id FROM vets WHERE name = 'Vet Maisy Smith'), '2020-8-3'),
    ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Vet Stephanie Mendez'), '2020-5-24'),
    ((SELECT id FROM animals WHERE name = 'Blossom'), (SELECT id FROM vets WHERE name = 'Vet William Tatcher'), '2021-1-11');
