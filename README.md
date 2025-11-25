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

## 🚀 Quick Start

### Prerequisites
- Python 3.8+
- dbt-bigquery
- BigQuery account

### Installation
1. Clone this repository
2. Set up virtual environment:
   ```bash
   python -m venv dbtenv
   source dbtenv/bin/activate
   pip install dbt-bigquery
Configure BigQuery credentials:

bash
cp profiles.example.yml profiles.yml
# Add your BigQuery credentials to profiles.yml
Running the Project
bash
# Run all models
dbt run

# Run specific models
dbt run -m table_d+

# Run tests
dbt test

# Generate documentation
dbt docs generate
dbt docs serve
📈 Models
table_a: Daily COVID-19 cases and deaths for African countries

table_b: Country-level summaries and fatality rates

table_c: Country rankings and performance analysis

table_d: Regional risk categorization and business insights

🤖 Automation
The project includes automated daily runs via cron job:

bash
0 6 * * * /path/to/dbt run -t dev
📚 Documentation
View complete project documentation:

bash
dbt docs generate
dbt docs serve
🛡️ Security
Credentials are managed via profiles.yml (not in version control)

Example configuration provided in profiles.example.yml

text

## Step 3: Save and Add to Git

```bash
# Add the updated README
git add README.md

# Commit the changes
git commit -m "docs: Add comprehensive README with project overview"