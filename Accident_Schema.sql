DROP TABLE IF EXISTS reg_vehicle;
DROP TABLE IF EXISTS license;
DROP TABLE IF EXISTS population;
DROP TABLE IF EXISTS accident;



-- Create a table of reg_vehicle
CREATE TABLE reg_vehicle(
  state_name VARCHAR PRIMARY KEY,
  num_reg_vehicle INT,
  timezone  VARCHAR
);


--Craete a table for license
CREATE TABLE license (
  id SERIAL PRIMARY KEY,
  state_name VARCHAR,
  FOREIGN KEY (state_name) REFERENCES reg_vehicle(state_name),
  d2014 INT,
  d2015 INT,
  d2016 INT
);

-- Create a table of population
CREATE TABLE population (
  county_id INT PRIMARY KEY,
  county VARCHAR,
  pop2015 INT,
  pop2016 INT,
  pop2017 INT,
  pop2018 INT
);

--Create a table for accident
CREATE TABLE accident (
  accident_id INT PRIMARY KEY,
  datetime DATETIME,
  state_name VARCHAR,
  FOREIGN KEY (state_name) REFERENCES reg_vehicle(state_name),
  city VARCHAR,
  county VARCHAR,
  FOREIGN KEY (county) REFERENCES population(county),
  zipcode INT NOT NULL,
  temperature INT,
  visibility INT,
  weather_condition VARCHAR
);



