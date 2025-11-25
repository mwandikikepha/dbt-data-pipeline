-- This model will use generate_alias_name() to append the developer suffix

{{ config(
    alias=generate_alias_name()  
) }}

-- COVID-19 daily case data for major countries
SELECT 
  date,
  country_name,
  country_code,
  new_confirmed AS daily_cases,
  new_deceased AS daily_deaths,
  cumulative_confirmed AS total_cases,
  cumulative_deceased AS total_deaths
FROM `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE date >= '2020-01-01'
  AND country_name IN (
    'Kenya',
    'Nigeria',
    'South Africa',
    'Egypt',
    'Ghana',
    'Ethiopia',
    'Uganda',
    'Tanzania',
    'Rwanda',
    'Senegal',
    'Morocco',
    'Algeria',
    'Tunisia',
    'Zambia',
    'Zimbabwe',
    'Cameroon',
    'Ivory Coast',
    'Angola'
  )
  AND new_confirmed IS NOT NULL
ORDER BY date, country_name