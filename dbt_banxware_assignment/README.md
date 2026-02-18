# *Sales Data Transformation*: Banxware Data Engineering Home Assignment

The project transforms raw sales data to extract year, month, and day from the ```order_date```, and to calculate the total sales amount 
per order. The original customer data and the transformed sales data are then used to answer business questions for the sales team. 

## Setup Instructions
- Create a Snowflake account, database: ```home_assignment```, and schema: ```product_data```
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
``` 
mkdir -p ~/.dbt
```
```
nano ~/.dbt/profiles.yml
```
The content of the profiles.yml file, replace the values of the parameter with your own credentials: 
```
dbt_banxware_assignment:
  outputs:
    dev:
      type: snowflake
      threads: 4
      account: <your_snowflake_account_details>
      database: <snowflake_database_name>
      user: <login-name>
      password: <yourpassword>
      schema: <your_snowflake_schema_name>
      warehouse: <compute_wh>
      role: <snowflake_role>
  target: dev
```
- Navigate to the dbt project folder
```
cd dbt_banxware_assignment
```
- Run the following commands:
  - ```dbt debug```: to check your connection with Snowflake
  - ```dbt seed```: to move the csv files to Snowflake
  - ```dbt run```: to materialize the models
  - ```dbt test```: to test the models

## SQL Queries
- The SQL queries for the problems are inside the ```queries/``` folder 
as separate files and can be executed directly on Snowflake. 
