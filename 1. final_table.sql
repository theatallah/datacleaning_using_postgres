--creating a table with column called rn to check for duplicates
CREATE TABLE final_table AS
SELECT *,row_number() OVER (PARTITION BY company,job_location,industry,total_laid_off,percentage_laid_off,date_of_layofs,stage,country,funds_raised_millions) AS rn
FROM jobs_layoffs