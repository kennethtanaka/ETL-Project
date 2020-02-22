--Create table to load cleaned life expectancy data into.
CREATE TABLE life_expectancy (
index INT,
country VARCHAR,
year INT,
status TEXT,
life_expectancy DECIMAL,
adult_mortality INT,
infant_deaths INT,
percentage_expenditure DECIMAL,
measles	INT,
bmi DECIMAL,
under_five_death DECIMAL,
hiv_aids DECIMAL,
gdp DECIMAL,
population BIGINT,
schooling INT,
PRIMARY KEY (country, year)

);



--Create table to load cleaned us aid data.
CREATE TABLE us_aid (
index INT,
country_name VARCHAR, 
fiscal_year INT,
current_amount BIGINT,
constant_amount BIGINT,
PRIMARY KEY (country_name, fiscal_year)

);


--Left join life_expectancy and us_aid. Keep all values from life_expectancy.

SELECT l.country, l.year, l.status, l.life_expectancy, l.adult_mortality, l.infant_deaths, l.percentage_expenditure, l.measles, l.bmi, 
    l.under_five_death, l.hiv_aids, l.gdp, l.population, l.schooling, u.country_name,
    u.fiscal_year, u.current_amount, u.constant_amount
FROM life_expectancy AS l
LEFT JOIN us_aid AS u
ON l.country = u.country_name and
l.year = u.fiscal_year;

