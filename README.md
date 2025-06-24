# IIT-Bombay
## Overview 
The IIT_BOM_db academic database is designed to monitor and analyze student engagement activities across various departments at IIT Bombay. The central table, student_engagements, captures comprehensive data for each student activity, including identifiers, personal details, academic context (such as semester and department), activity types (lectures, labs, assignments, etc.), platforms used, duration, participation scores, submission statuses, and devices used.
## Objectives 
To enable data-driven interventions that boost completion rates and reduce academic disparities
## Database Creation
``` sql
CREATE DATABASE IIT_BOM_db;
USE IIT_BOM_db; 
```
## Table Creation
### Table:student_engagements
``` sql
CREATE TABLE student_engagements(
    engagement_id        INT PRIMARY KEY,
    student_rollno       VARCHAR(15),
    student_name         VARCHAR(50) NOT NULL,
    department           TEXT NOT NULL,
    semester             INT,
    activity_type        VARCHAR(50),
    platform             VARCHAR(50),
    date                 DATE,
    duration_min         INT NOT NULL,
    participation_score  DECIMAL(6,2),
    submission_status    VARCHAR(50),
    device_type          TEXT
);

SELECT * FROM student_engagements;
 ```
## KEY Queries 

#### 1. List all Computer Science students with their participation scores, sorted by highest score first.
``` sql
SELECT * FROM student_engagements
WHERE department='Computer Science'
ORDER BY participation_score DESC;
```
#### 2. Show all activities that were submitted late, including student names and departments 
``` sql
SELECT engagement_id,student_name,department,activity_type,date,submission_status FROM student_engagements
WHERE submission_status='Late';
```
#### 4. Find which department has the highest average participation score. 
``` sql
SELECT department,ROUND(AVG(participation_score),2) AS Average_participation_score FROM student_engagements
GROUP BY department
ORDER BY Average_participation_score DESC 
LIMIT 1;
```
#### 5. Compare submission status rates ('Submitted'/'Late'/'Missing') across departments.
``` sql
 SELECT department,submission_status,COUNT(*)/(SELECT COUNT(*) FROM student_engagements) AS Submission_rate FROM student_engagements
 GROUP BY department,submission_status
 ORDER BY department,submission_status;
```
#### 6. List departments where mobile device usage exceeds desktop usage for activities.
``` sql
SELECT 
        department
FROM (
        SELECT department,
                SUM(CASE WHEN device_type IN ('Mobile','Tablet') THEN 1 ELSE 0 END) AS Mobile_usage,
                SUM(CASE WHEN device_type='Desktop' THEN 1 ELSE 0 END) AS Desktop_usage
        FROM student_engagements
    GROUP BY department
) AS Device_counts
WHERE Mobile_usage>Desktop_usage;
```
#### 7. Show daily engagement trends (number of activities per day).
``` sql
SELECT DAYNAME(date) AS Day_of_WEEK, COUNT(*) AS Total_Activities FROM student_engagements
GROUP BY Day_of_WEEK
ORDER BY Total_Activities DESC;
```
#### 8. Identify the busiest day of the week for lab sessions.
``` sql
SELECT DAYNAME(date) AS Day_of_WEEK,COUNT(*) AS Total_Lab_Activities FROM student_engagements
WHERE activity_type='Lab'
GROUP BY Day_of_WEEK
ORDER BY Total_Lab_Activities DESC 
LIMIT 1;
```
#### 9. Find students who haven't participated in any activities in the last 7 days.
``` sql
SELECT student_rollno,student_name FROM student_engagements
WHERE student_rollno NOT IN(
        SELECT DISTINCT student_rollno
    FROM student_engagements
    WHERE date>=CURDATE()-INTERVAL 7 DAY);
```
#### 10. List students with perfect scores (100%) in any activity type.
``` sql
SELECT student_rollno,student_name,activity_type,participation_score FROM student_engagements
WHERE participation_score=100.0;
```
#### 11. Find quizzes where the average score was below 75%.
``` sql
SELECT engagement_id,AVG(participation_score) AS Average_participation_score FROM student_engagements
WHERE activity_type='Quiz'
GROUP BY engagement_id
HAVING Average_participation_score<75;
```
#### 12. Compare project scores between offline and online submissions.
``` sql
SELECT platform, AVG(participation_score) AS Average_participation_score FROM student_engagements
WHERE activity_type='Project'
GROUP BY platform;
```
#### 13. Calculate the percentage of activities completed on mobile vs desktop vs tablet.
``` sql
SELECT device_type, COUNT(*)/(SELECT COUNT(*) FROM student_engagements) AS Percentage FROM student_engagements
WHERE device_type IN('Mobile','Tablet','Desktop')
GROUP BY device_type;
```
#### 14. Show platform preference (Moodle/Google Classroom/MS Teams) by department.
``` sql
SELECT department, platform, COUNT(*) AS Total_Used FROM student_engagements
GROUP BY department, platform;
```
#### 15. Find if device type correlates with higher/lower participation scores.
``` sql
SELECT device_type,AVG(participation_score) AS Average_participation_score FROM student_engagements
WHERE participation_score IS NOT NULL
GROUP BY device_type
ORDER BY Average_participation_score DESC;
```
## Conclusion 
The analysis of student engagement data provides valuable insights into how students interact with academic content and platforms. Key findings show that Computer Science students have the highest participation scores, certain departments rely more on mobile devices, and engagement peaks vary across the week. Additionally, submission behaviors and device usage differ by department, reflecting varying levels of digital accessibility and academic discipline. This data-driven approach enables better academic planning, targeted interventions, and resource allocation, ultimately supporting improved student outcomes and institutional effectiveness.

