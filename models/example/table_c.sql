-- models/example/table_c.sql
{{ config(alias=generate_alias_name()) }}

-- Compare African countries' performance
SELECT 
  a.country_name,
  b.total_cases as total_cases,
  b.case_fatality_rate,
  -- Add rankings
  RANK() OVER (ORDER BY b.total_cases DESC) as cases_rank,
  RANK() OVER (ORDER BY b.case_fatality_rate DESC) as fatality_rank
FROM {{ ref('table_a') }} a
LEFT JOIN {{ ref('table_b') }} b ON a.country_name = b.country_name
GROUP BY a.country_name, b.total_cases, b.case_fatality_rate