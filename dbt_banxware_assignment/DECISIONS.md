This file explains my setup, transformations, and other decisions. 

## Setup
- **GitHub setup:** I cloned the assignment bitbucket repo, created a new GitHub repo, changed remote to Github,
and pushed the repo.
- **Virtual environment:** I made a feature branch to work on, set up a virtual environment, and installed requirements.
- **Snowflake Connection:** Then I used profiles.yml to set up the connection with Snowflake and verified it with ```dbt debug```.
- **Data:** Moved the csv files to the seeds folder and loaded them into Snowflake using ```dbt seed```.

## Ingestion 
- I used ```dbt seed``` to load data into Snowflake as the data is static and simple and won't change.  

## Transformations
- **Models:** There is a single transformation model under staging as the transformations don't require multiple model layers. 
The ```models``` folder is structured as follows:

```text
models/
├── staging/                            # the model layer  
│   └── product_data                    # the source  
│       ├── _src_product_data.yml       # defines the source db, schema, tables, primary key columns and generic tests  
│       ├── _stg_product_data.yml       # defines the models, primary key column and generic tests, and the new columns
│       └── transformed_sales_data.sql  # performs the required transformations on raw_sales_data
```

- **Database and Schema:** Both the raw (```raw_sales_data``` and ```raw_customer_data```) and transformed 
(```transformed_sales_data```) tables are stored in the same database (```home_assignment```) and schema (```product_data```) for 
simplicity. Ideally, they should be stored separately but since there are only a few tables, I stored them together. 
