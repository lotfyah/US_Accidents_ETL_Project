DROP TABLE IF EXISTS accident;
DROP TABLE IF EXISTS population;
DROP TABLE IF EXISTS license;
DROP TABLE IF EXISTS reg_vehicle;




-- Create a table of reg_vehicle
CREATE TABLE reg_vehicle(
  id SERIAL PRIMARY KEY,
  state_name VARCHAR,
  num_reg_vehicle VARCHAR 
);


--Craete a table for license
CREATE TABLE license (
  id SERIAL PRIMARY KEY,
  state_name VARCHAR,
  state_id int,	
  num_licenced_driver_2014 VARCHAR,
  num_licenced_driver_2015 VARCHAR,
  num_licenced_driver_2016 VARCHAR,
  FOREIGN KEY (state_id) REFERENCES reg_vehicle(id)
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
  state_name VARCHAR,
  state_id INT,	
  city VARCHAR,
  county VARCHAR,
  population_id INT,
  zipcode VARCHAR,
  timezone  VARCHAR,
  temperature FLOAT,
  visibility FLOAT,
  weather_condition VARCHAR,
  FOREIGN KEY (population_id) REFERENCES population(id),
  FOREIGN KEY (state_id) REFERENCES reg_vehicle(id)
);

SELECT * FROM accident;