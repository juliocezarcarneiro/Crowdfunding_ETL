## Crowdfunding ETL Project

## Project Overview
This project focuses on building an ETL (Extract, Transform, Load) pipeline using Python, Pandas, and PostgreSQL. The goal is to extract data from Excel files, transform it into structured DataFrames, and load 
it into a PostgreSQL database. The project demonstrates skills in data extraction, cleaning, transformation, and database management.

## Table of Contents
1. Project Overview
2. Technologies Used
3. Setup Instructions
4. Steps to Reproduce the Project
5. Project Structure
6. References
7. Acknowledgments

## Technologies Used
Python: For data extraction and transformation.

Pandas: For cleaning and processing the data.

PostgreSQL: For database management and tables creation.

QuickDBD: For designing the Entity-Relationship Diagram (ERD).

pgAdmin 4: For PostgreSQL database operations and CSV imports.

## Setup Instructions

* Clone the repository: git clone https://github.com/<your-username>/Crowdfunding_ETL.git

* Open the Jupyter notebook and run the cells to generate the CSV files.

* Execute the SQL script (crowdfunding_db_schema.sql) in PostgreSQL to create the database schema.

* Import the generated CSV files into PostgreSQL using pgAdmin 4.

* Use SQL SELECT statements to confirm the data is correctly loaded into each table.

## Steps to Reproduce the Project
## Crowdfunding ETL Project

## Project Overview
This project focuses on building an ETL (Extract, Transform, Load) pipeline using Python, Pandas, and PostgreSQL. The goal is to extract data from Excel files, transform it into structured DataFrames, and load it into a PostgreSQL database. The project demonstrates data cleaning, transformation, and database management skills.

## Table of Contents
1. Project Overview
2. Technologies Used
3. Setup Instructions
4. Steps to Reproduce the Project
5. Database Tables
6. Folder Structure
7. References

## Technologies Used
Python: For data extraction and transformation.

Pandas: For data manipulation and cleaning.

PostgreSQL: For database management.

QuickDBD: For designing the Entity-Relationship Diagram (ERD).

pgAdmin 4: For database operations and CSV imports.

## Setup Instructions

Clone the repository: git clone https://github.com/<your-username>/Crowdfunding_ETL.git

Open the Jupyter notebook and run the cells to generate the CSV files.

Execute the SQL script (crowdfunding_db_schema.sql) in PostgreSQL to create the database schema.

Import the CSV files into the database using pgAdmin 4 or the COPY command.

Verify the data by running SELECT queries in PostgreSQL.

## Steps to Reproduce the Project
1. Extract and Transform Data
    * Category and Subcategory DataFrames:

        * Extract unique categories and subcategories from crowdfunding.xlsx.

        * Generate category_id and subcategory_id columns.

        * Export as category.csv and subcategory.csv.

    * Campaign DataFrame:

        * Extract relevant columns from crowdfunding.xlsx.

        * Rename columns, convert data types, and split category & sub-category.

        * Map category_id and subcategory_id from the category and subcategory DataFrames.

        * Export as campaign.csv.

    * Contacts DataFrame:

        * Extract data from contacts.xlsx using Python dictionary methods or regex.

        * Split the name column into first_name and last_name.

        * Export as contacts.csv.

2. Design the Database
    * Use QuickDBD to create an ERD for the four tables:

        * category

        * subcategory

        * contacts

        * campaign

    * Define primary keys, foreign keys, and relationships.

3. Create the Database Schema
    * Write a SQL script (crowdfunding_db_schema.sql) to create the tables in PostgreSQL.

        * Include data types, primary keys, foreign keys, and constraints.

4. Load Data into PostgreSQL
    * Create a new PostgreSQL database named crowdfunding_db.

    * Run the crowdfunding_db_schema.sql script to create the tables.

    * Import the CSV files into their respective tables using pgAdmin 4 or the COPY command.

5. Verify the Data
    * Run SELECT statements to verify the data in each table.

## Project Structure
The repository is organized as follows:

## /Crowdfunding_ETL

- **ETL_Mini_Project_JCarneiro.ipynb**
- **LICENSE.txt**
- **README.md**
- **crowdfunding_db_schema.sql**
- **quick-database-backup.rtf**

- **/Resources**:
  - **campaign.csv**
  - **category.csv**
  - **subcategory.csv**
  - **contacts.csv**
  - **contacts.xlsx**
  - **crowdfunding.xlsx**

## References
* QuickDBD Documentation – Used for designing and visualizing the Entity-Relationship Diagram (ERD) of the project database.

* PostgreSQL Documentation – Referenced for database setup, table creation, constraints, and SQL queries.

* Pandas Documentation – Used for data extraction, cleaning, and transformation during the ETL process.

* ChatGPT – Assisted with project guidance.

