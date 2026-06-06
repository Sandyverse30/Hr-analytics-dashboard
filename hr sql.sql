CREATE DATABASE hr_analytics;
USE hr_analytics;
CREATE TABLE hr_data (
    employee_id VARCHAR(50),
    age INT,
    age_group VARCHAR(50),
    gender VARCHAR(50),
    department VARCHAR(100),
    experience_level VARCHAR(50),
    salary FLOAT,
    salary_category VARCHAR(50),
    performance_rating FLOAT,
    years_at_company INT
);
DROP DATABASE HR_ANALYTICS;
SHOW TABLES;
SHOW databases;
SELECT * 
FROM `hr analytics data - employees attrition and leadership impact`
LIMIT 100;
SELECT COUNT(*) 
FROM `hr analytics data - employees attrition and leadership impact`;
RENAME TABLE 
`hr analytics data - employees attrition and leadership impact`
TO hr_set;
DESCRIBE hr_set;
#1EMPLOYEE BY DEPARTMENT
SELECT Department,
COUNT(*) AS employee_count
FROM hr_SET
GROUP BY Department
ORDER BY employee_count DESC;

#2 GENDER ANALYSIS 
SELECT Gender,
COUNT(*) AS total_employees
FROM hr_SET
GROUP BY Gender;

#3 AVERAGE SALARY BY DEPARTMENT
SELECT Department,
AVG(Salary) AS avg_salary
FROM hr_set
GROUP BY Department
ORDER BY avg_salary DESC;

#4 EXPERIENCE ANALYSIS
SELECT `Experience Level`,
COUNT(*) AS employee_count
FROM hr_set
GROUP BY `Experience Level`;

#5 AGE GROUP ANALYSIS 
SELECT 'Age_Group',
COUNT(*) AS employee_count
FROM hr_set
GROUP BY 'Age_Group';

#6 TOP DEPARTMNET BY THE EMPLOYEE
SELECT Department,
COUNT(*) AS employee_count
FROM hr_set
GROUP BY Department
ORDER BY employee_count DESC;

# 7 GENDER DISTRIBUTION 
SELECT Gender,
COUNT(*) AS total_employees
FROM hr_set
GROUP BY Gender;

#8 BONUS ANALYSIS
SELECT Department,
AVG(Bonus) AS avg_bonus
FROM hr_set
GROUP BY Department
ORDER BY avg_bonus DESC;

#9 PROJECT COMPLETION ANALYSIS 
SELECT Department,
AVG(ProjectsCompleted) AS avg_projects_completed
FROM hr_set
GROUP BY Department
ORDER BY avg_projects_completed DESC;

#10 JOB SATISFACTION ANALYSIS
SELECT Department,
AVG(JobSatisfactionScore) AS avg_satisfaction
FROM hr_set
GROUP BY Department
ORDER BY avg_satisfaction DESC;

#11 RETENTION RISK ANALYSIS 
SELECT RetentionRisk,
COUNT(*) AS employee_count
FROM hr_set
GROUP BY RetentionRisk;

#12 TOP 5 HIGHEST PAID EMPLOYEE
SELECT EmployeeID,
Department,
Salary
FROM hr_set
ORDER BY Salary DESC
LIMIT 5;

#13 TOP PERFORMING DEPARTMENT
SELECT Department,
AVG(PerformanceRating) AS avg_performance
FROM hr_set
GROUP BY Department
HAVING avg_performance > 4
ORDER BY avg_performance DESC;

#14 TRAINING HOURS ANALYSIS
SELECT Department,
AVG(TrainingHours) AS avg_training_hours
FROM hr_set
GROUP BY Department
ORDER BY avg_training_hours DESC;

#15 EMPLOYEE ENGAGEMENT ANALYSIS
SELECT Department,
AVG(EmployeeEngagementScore) AS avg_engagement
FROM hr_set
GROUP BY Department
ORDER BY avg_engagement DESC;




