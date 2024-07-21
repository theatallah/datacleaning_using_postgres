# DataCleaning Process Using Postgres SQL

## 1. Introduction:

Project is based on youtube channel alex the analyst, link to the video is [here](https://www.youtube.com/watch?v=4UltKCnnnTA), 
There is CSV file which contains job layoffs by company, city, country ,number of layoffs ,date of layoffs etc, as in most data projects files are not perfect so needs cleaning prior to starting analysis on this file

## 2. CSV file used:

CSV File used for this project is [here](https://github.com/theatallah/datacleaning_using_postgres/blob/main/csv%20files/layoffs%20cleaned.csv) 

## 3. Tools used:

For Database i used postgres sql and PGADMIN 4, also i used excel

## 4. Data Cleaning Process:

### Step 1:

Date column in csv file is transformed to my local system settings which is dd/mm/yyyy using Text to columns feature in excel to avoid import errors in postgres sql

### step 2:

Creating the database in postgres sql to store the tables

### step 3:

Creating the table in postgres sql and then uploading the csv file using user interface in pgadmin 4

### step 4:

Creating final table with additional column called rn, in order to detect duplicates, it is sql window function which will check each column and provide no 1 if row is unique or number greater than 1 if duplicate is found

``` sql
CREATE TABLE final_table AS
SELECT *,row_number() OVER (PARTITION BY company,job_location,industry,total_laid_off,percentage_laid_off,date_of_layofs,stage,country,funds_raised_millions) AS rn
FROM jobs_layoffs
```

###





