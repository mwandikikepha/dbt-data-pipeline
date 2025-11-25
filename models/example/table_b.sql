-- this model automatically points to table_a_Kepha

{{ config(
    alias=generate_alias_name()
) }}

-- Build on table_a with African country-level aggregations
SELECT 
  country_name,
  MIN(date) AS first_reported_case,
  MAX(date) AS last_reported_case,
  SUM(daily_cases) AS total_cases,
  SUM(daily_deaths) AS total_deaths,
  AVG(daily_cases) AS avg_daily_cases,
  MAX(daily_cases) AS peak_daily_cases,
  -- Calculate case fatality rate
  CASE 
    WHEN SUM(daily_cases) > 0 THEN ROUND(SUM(daily_deaths) / SUM(daily_cases) * 100, 2)
    ELSE 0 
  END AS case_fatality_rate,
  -- Days with reported data
  COUNT(*) AS days_with_data
FROM {{ ref('table_a') }}
GROUP BY country_name
ORDER BY total_cases DESC