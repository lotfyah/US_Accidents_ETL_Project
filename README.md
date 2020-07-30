# US_Accidents_ETL_Project
the project establish a relational DB for US, Accidents, Population &amp; Vehicles Registration 
                               US Accidents ETL Project
July29, 2020 09:12 PM
Team Members : Kamran Abdullah, Ahmed Lotfy, Tunde Adebayo
Overview
	Using data reported U.S. accidents from 2016-2020, (csv found from kaggle), the US census api, and license/ vehicle information provided by the FHWA, we will report the accidents and population per county during the year of 2016. Using pandas and python, we will extract and clean the data. This will be completed using a relational database on pgAdmin, accompanied by an ERD diagram. The schema created in postgres will be broken down into second normal form.

US accidents 2016-2020: https://www.kaggle.com/sobhanmoosavi/us-accidents

US census api: api.census.gov/data/2016/acs/acs1?get=NAME,B01001_001E&for=county:*&key=

Number of license per State (offered by Federal Highway Administration and US department of Transportation) : https://www.fhwa.dot.gov/policyinformation/statistics/2016/dl201.cfm

State vehicle registration (offered by Federal Highway Administration and US department of Transportation): https://www.fhwa.dot.gov/policyinformation/statistics/2016/mv1.cfm


Purpose/goal:
To establish a database connection between the accidents recorded in 49 states in the US and the population of the county where the accident happened in 2016. We will then merge this with the number of licenses provided per state, and vehicle registration per state provided by the FHWA.


Breakdown of tasks:
Create git repository
Identify source of data
Extract: read the csv and json files from the two sources
Exploring data
Transform: Clean and structure using pandas
Create ERD diagram
Match data types, Filter Data, aggregate data
Summarize data
Create 2nd normal form (using relational database)
Create schema
Load data
Take clean data and load into postgres on local host


