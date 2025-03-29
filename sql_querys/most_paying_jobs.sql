SELECT job_title_short,
       max(salary_year_avg) as max_salary_year,
       max(salary_year_avg) as max_salary_year
FROM job_postings_fact
GROUP BY
       job_title_short
       