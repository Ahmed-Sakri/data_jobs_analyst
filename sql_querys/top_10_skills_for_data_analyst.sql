CREATE table top_10_skills_for_data_analyst AS
SELECT skills_dim.skills AS skill,
    COUNT(skills_dim.skills) AS total_count
FROM skills_dim
INNER JOIN skills_job_dim ON skills_job_dim.skill_id = skills_dim.skill_id
INNER JOIN job_postings_fact ON job_postings_fact.job_id = skills_job_dim.job_id
WHERE job_postings_fact.job_title_short = 'Data Analyst'
GROUP BY skills_dim.skills
ORDER BY total_count DESC
LIMIT 10;
