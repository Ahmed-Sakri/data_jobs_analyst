SELECT DISTINCT 
       job_title_short,
       salary_year_avg,
       skills
FROM job_postings_fact 

INNER JOIN skills_job_dim
on job_postings_fact.job_id = skills_job_dim.job_id

INNER JOIN skills_dim
on skills_dim.skill_id = skills_job_dim.skill_id
WHERE
 salary_year_avg is NOT NULL
ORDER BY 
    salary_year_avg DESC


