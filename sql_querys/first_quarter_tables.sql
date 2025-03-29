-- Query to retrieve data from tables for the 1st, 2nd, and 3rd months
CREATE table january_job_postings AS(
   SELECT * FROM job_postings_fact
   WHERE EXTRACT (month FROM job_posted_date) = 1
);
CREATE table february_job_postings AS(
   SELECT * FROM job_postings_fact
   WHERE EXTRACT (month FROM job_posted_date) = 2
);

CREATE table march_job_postings AS(
   SELECT * FROM job_postings_fact
   WHERE EXTRACT (month FROM job_posted_date) = 3
);