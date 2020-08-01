DROP TABLE IF EXISTS accident;
DROP TABLE IF EXISTS population;
DROP TABLE IF EXISTS license;
DROP TABLE IF EXISTS reg_vehicle;




-- Create a table of reg_vehicle
CREATE TABLE reg_vehicle(
  id SERIAL,
  state_name VARCHAR PRIMARY KEY,
  num_reg_vehicle INT
);


--Craete a table for license
CREATE TABLE license (
  id SERIAL PRIMARY KEY,
  state_name VARCHAR,
  num_licenced_driver_2014 INT,
  num_licenced_driver_2015 INT,
  num_licenced_driver_2016 INT,
  FOREIGN KEY (state_name) REFERENCES reg_vehicle(state_name)
);

-- Create a table of population
CREATE TABLE population (
  id SERIAL PRIMARY KEY,
  county VARCHAR,
  population_2015 INT,
  population_2016 INT,
  population_2017 INT,
  population_2018 INT
);

--Create a table for accident
CREATE TABLE accident (
  id VARCHAR PRIMARY KEY,
  datetime TIMESTAMP,
  state_name VARCHAR NOT NULL,
  city VARCHAR,
  county VARCHAR,
  population_id INT,
  zipcode INT NOT NULL,
  timezone  VARCHAR,
  temperature INT,
  visibility INT,
  weather_condition VARCHAR,
  FOREIGN KEY (population_id) REFERENCES population(id),
  FOREIGN KEY (state_name) REFERENCES reg_vehicle(state_name)
);

SELECT *
FROM accident;