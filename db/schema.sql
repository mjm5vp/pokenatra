DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE trainers (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  level INT,
  img_url VARCHAR
);


CREATE TABLE pokemons (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  cp INT,
  poke_type VARCHAR,
  img_url VARCHAR,
  trainer_id INT
);
