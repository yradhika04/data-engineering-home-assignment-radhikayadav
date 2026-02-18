# *Sales Data Transformation*: Banxware Data Engineering Home Assignment

The project transforms raw sales data to extract year, month, and day from the ```order_date```, and to calculate the total sales amount 
per order. The original customer data and the transformed sales data are then used to answer business questions for the sales team. 

## Setup Instructions
- Create a Snowflake account, database, and schema
- Clone the repository
```
git clone https://github.com/yradhika04/data-engineering-home-assignment-radhikayadav.git
```
```
cd data-engineering-home-assignment-radhikayadav
```
- Set up a Python virtual environment 
``` 
python3 -m venv venv 
```
```
source venv/bin/activate
```
- Install requirements
```
pip install -r requirements.txt
```
- Create up a profiles.yml file with your Snowflake credentials 
- Navigate to the dbt project folder
```
cd dbt-banxware-assignment
```
- Run the following commands:
  - ```dbt debug```: to check your connection with Snowflake
  - ```dbt seed```: to move the csv files to Snowflake
  - ```dbt run```: to materialize the models
  - ```dbt test```: to test the models

## SQL Queries
- The SQL queries for the problems are inside the ```queries/``` folder 
as separate files and can be executed directly on Snowflake. 
