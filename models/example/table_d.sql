-- models/example/table_d.sql
{{ config(alias=generate_alias_name()) }}

-- Regional analysis and insights
SELECT 
  country_name,
  total_cases,
  case_fatality_rate,
  cases_rank,
  fatality_rank,
  -- Performance categories
  CASE 
    WHEN case_fatality_rate > 3 THEN 'High Risk'
    WHEN case_fatality_rate > 2 THEN 'Medium Risk' 
    ELSE 'Low Risk'
  END as risk_category,
  -- Regional grouping (simplified)
  CASE 
    WHEN country_name IN ('Kenya', 'Ethiopia', 'Uganda', 'Tanzania') THEN 'East Africa'
    WHEN country_name IN ('Nigeria', 'Ghana', 'Senegal', 'Ivory Coast', 'Cameroon') THEN 'West Africa'
    WHEN country_name IN ('South Africa', 'Zambia', 'Zimbabwe','Angola') THEN 'Southern Africa'
    WHEN country_name IN ('Egypt', 'Morocco', 'Algeria', 'Tunisia') THEN 'North Africa'
    ELSE 'Other Africa'
  END as region
FROM {{ ref('table_c') }}
ORDER BY cases_rank