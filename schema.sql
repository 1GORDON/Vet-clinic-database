/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic;

CREATE TABLE animals (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL NOT NULL 
);

ALTER TABLE animals
ADD species varchar(100);

CREATE TABLE owners (
    id BIGSERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    age INT
);

CREATE TABLE species (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100)
);

--Modify animals table

ALTER TABLE animals
DROP COLUMN id;

ALTER TABLE animals
ADD id BIGSERIAL PRIMARY KEY;

ALTER TABLE animals
DROP COLUMN species;

ALTER TABLE animals
    ADD species_id INT, 
    ADD CONSTRAINT species_id 
    FOREIGN KEY(species_id) 
    REFERENCES species(id);

ALTER TABLE animals 
    ADD owners_id INT, 
    ADD CONSTRAINT owners_id 
    FOREIGN KEY(owners_id) 
    REFERENCES owners(id);

-- Many to many relationships

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    date_of_graduation DATE
);

CREATE TABLE specializations (
    species_id INT,
    vets_id INT,
    CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id),
    CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id)
);

CREATE TABLE visits (
    animals_id INT,
    vets_id INT,
    date_of_visit DATE,
    CONSTRAINT fk_animals FOREIGN KEY(animals_id) REFERENCES animals(id),
    CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id)
);
