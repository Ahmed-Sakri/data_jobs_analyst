SELECT 
    skills_dim.skills,
    ROUND(AVG(job_postings_fact.salary_year_avg), 0) AS average_salary
FROM 
    skills_dim
INNER JOIN 
    skills_job_dim 
    ON skills_job_dim.skill_id = skills_dim.skill_id
INNER JOIN 
    job_postings_fact 
    ON skills_job_dim.job_id = job_postings_fact.job_id
WHERE 
    job_postings_fact.salary_year_avg IS NOT NULL 
    AND skills_dim.skills IS NOT NULL
GROUP BY
    skills_dim.skills
ORDER BY 
    average_salary DESC