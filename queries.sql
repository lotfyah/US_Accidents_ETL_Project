UPDATE license
SET state_id=(SELECT id FROM reg_vehicle WHERE license.state_name=reg_vehicle.state_name)

UPDATE accident
SET state_id=(SELECT id FROM reg_vehicle WHERE accident.state_name=reg_vehicle.state_name)

UPDATE accident
SET population_id=(SELECT id FROM population WHERE accident.county=population.county)

SELECT county.county_name, premise.id, premise.premise_name
FROM premise
INNER JOIN county
ON premise.county_id = county.id;

select * from accident