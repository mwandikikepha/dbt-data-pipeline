# dbt COVID-19 Data Pipeline

A complete dbt project analyzing COVID-19 data for African countries with automated data transformations and scheduling.

##  Project Overview

This project demonstrates a full dbt data pipeline with:
- **4-layer transformation**: Raw data → Summaries → Analytics → Business Insights
- **Automated scheduling**: Daily runs via cron jobs
- **BigQuery integration**: Using public COVID-19 datasets
- **Professional documentation**: Auto-generated dbt docs

##  Data Pipeline
table_a (Raw COVID Data)
→ table_b (Country Summaries)
→ table_c (Performance Rankings)
→ table_d (Regional Risk Analysis)

text

##  Quick Start

### Prerequisites
- Python 3.8+
- dbt-bigquery
- BigQuery account

### Installation
1. Clone this repository
   
3. Set up virtual environment:
   ```
   python -m venv dbtenv
   source dbtenv/bin/activate
   pip install dbt-bigquery
   ```
Configure BigQuery credentials:
```
example_profiles.yml
```
Add your BigQuery credentials to profiles.yml

# Running the Project

## Run all models
```dbt run```

## Run specific models
```dbt run -m table_d+```

## Run tests
```dbt test```

## Generate documentation
```
dbt docs generate
dbt docs serve
```
# Models
 
- table_a: Daily COVID-19 cases and deaths for African countries

- table_b: Country-level summaries and fatality rates

- table_c: Country rankings and performance analysis

- table_d: Regional risk categorization and business insights

# Automation

The project includes automated daily runs via cron job:

```
0 6 * * * /path/to/dbt run -t dev
```
Running 

```
0 6 * * * dbt run -t dev --vars '{my_variable: dbt_demo, apply_alias_suffix: _Kepha}'
```
# Documentation

View complete project documentation:

```
dbt docs generate
dbt docs serve
```

##  Project Structure
```
dbtproject/
├── models/example/ # Data models
│ ├── table_a.sql # Raw COVID data
│ ├── table_b.sql # Country summaries
│ ├── table_c.sql # Performance rankings
│ └── table_d.sql # Business insights
├── macros/ # Custom dbt macros
├── analyses/ # Ad-hoc analyses
├── dbt_project.yml # Project configuration
├── example_profiles.yml # BigQuery setup template
└── README.md # This file
```

##  Technologies Used

- **dbt** (Data Build Tool)
- **Google BigQuery**
- **BigQuery Public Datasets**
- **Python 3.8+**
- **Cron** (Automation)

##  Skills Demonstrated

- Data Transformation & Modeling
- Pipeline Automation & Scheduling
- Data Quality Testing
- Documentation & Lineage Tracking
- BigQuery Data Warehousing
- Production dbt Development

# Security

Credentials are managed via profiles.yml (not in version control)

Example configuration provided in example_profiles.yml

