CREATE DATABASE IIT_BOM_db;
USE IIT_BOM_db; 

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

INSERT INTO student_engagements VALUES
	(1, 'CS2023001', 'Aarav Sharma', 'Computer Science', 3, 'Lecture', 'MS Teams', '2023-09-01', 90, 85.5, 'Submitted', 'Desktop'),
	(2, 'CS2023001', 'Aarav Sharma', 'Computer Science', 3, 'Lab', 'Moodle', '2023-09-03', 120, 92.0, 'Submitted', 'Desktop'),
	(3, 'EC2023002', 'Diya Patel', 'Electronics', 2, 'Quiz', 'Google Classroom', '2023-09-01', 45, 78.5, 'Late', 'Mobile'),
	(4, 'ME2023003', 'Rohan Kumar', 'Mechanical', 4, 'Project', 'Offline', '2023-09-05', 180, 88.0, 'Submitted', 'Desktop'),
	(5, 'CS2023004', 'Ananya Singh', 'Computer Science', 3, 'Assignment', 'Moodle', '2023-09-02', 60, NULL, 'Missing', NULL),
	(6, 'EE2023005', 'Ishaan Gupta', 'Electrical', 1, 'Lecture', 'MS Teams', '2023-09-01', 90, 76.5, 'Submitted', 'Tablet'),
	(7, 'EC2023002', 'Diya Patel', 'Electronics', 2, 'Lab', 'Moodle', '2023-09-04', 110, 94.5, 'Submitted', 'Desktop'),
	(8, 'ME2023003', 'Rohan Kumar', 'Mechanical', 4, 'Quiz', 'Google Classroom', '2023-09-03', 50, 82.0, 'Submitted', 'Mobile'),
	(9, 'CE2023006', 'Priya Joshi', 'Civil', 2, 'Lecture', 'MS Teams', '2023-09-02', 90, 91.5, 'Submitted', 'Desktop'),
	(10, 'CS2023004', 'Ananya Singh', 'Computer Science', 3, 'Lab', 'Moodle', '2023-09-06', 115, 89.0, 'Late', 'Tablet'),
	(11, 'EE2023005', 'Ishaan Gupta', 'Electrical', 1, 'Assignment', 'Google Classroom', '2023-09-03', 75, 65.0, 'Submitted', 'Mobile'),
	(12, 'BT2023007', 'Vivaan Malhotra', 'Biotech', 5, 'Lecture', 'MS Teams', '2023-09-04', 90, 72.0, 'Submitted', 'Desktop'),
	(13, 'CE2023006', 'Priya Joshi', 'Civil', 2, 'Quiz', 'Moodle', '2023-09-05', 55, 84.5, 'Submitted', 'Tablet'),
	(14, 'CS2023008', 'Arjun Reddy', 'Computer Science', 3, 'Project', 'Offline', '2023-09-07', 200, 95.0, 'Submitted', 'Desktop'),
	(15, 'EC2023009', 'Kavya Iyer', 'Electronics', 2, 'Lab', 'Moodle', '2023-09-06', 130, 90.5, 'Submitted', 'Desktop'),
	(16, 'ME2023010', 'Rahul Verma', 'Mechanical', 4, 'Lecture', 'MS Teams', '2023-09-05', 90, 81.0, 'Submitted', 'Mobile'),
	(17, 'EE2023011', 'Neha Choudhary', 'Electrical', 1, 'Assignment', 'Google Classroom', '2023-09-04', 80, NULL, 'Missing', NULL),
	(18, 'BT2023007', 'Vivaan Malhotra', 'Biotech', 5, 'Quiz', 'Moodle', '2023-09-07', 60, 79.0, 'Late', 'Tablet'),
	(19, 'CS2023008', 'Arjun Reddy', 'Computer Science', 3, 'Lecture', 'MS Teams', '2023-09-08', 90, 93.5, 'Submitted', 'Desktop'),
	(20, 'EC2023009', 'Kavya Iyer', 'Electronics', 2, 'Project', 'Offline', '2023-09-09', 190, 87.0, 'Submitted', 'Desktop'),
	(21, 'ME2023010', 'Rahul Verma', 'Mechanical', 4, 'Lab', 'Moodle', '2023-09-07', 140, 96.0, 'Submitted', 'Desktop'),
	(22, 'CE2023012', 'Aditya Rao', 'Civil', 2, 'Quiz', 'Google Classroom', '2023-09-06', 50, 68.5, 'Submitted', 'Mobile'),
	(23, 'EE2023011', 'Neha Choudhary', 'Electrical', 1, 'Lecture', 'MS Teams', '2023-09-08', 90, 74.0, 'Submitted', 'Tablet'),
	(24, 'BT2023013', 'Anika Banerjee', 'Biotech', 5, 'Assignment', 'Moodle', '2023-09-09', 70, 91.0, 'Submitted', 'Desktop'),
	(25, 'CS2023014', 'Vihaan Joshi', 'Computer Science', 3, 'Lab', 'Moodle', '2023-09-10', 125, 83.5, 'Late', 'Tablet'),
	(26, 'EC2023015', 'Dhruv Mehta', 'Electronics', 2, 'Lecture', 'MS Teams', '2023-09-09', 90, 89.0, 'Submitted', 'Desktop'),
	(27, 'ME2023016', 'Ishita Desai', 'Mechanical', 4, 'Quiz', 'Google Classroom', '2023-09-08', 60, 77.5, 'Submitted', 'Mobile'),
	(28, 'CE2023012', 'Aditya Rao', 'Civil', 2, 'Project', 'Offline', '2023-09-11', 210, 94.0, 'Submitted', 'Desktop'),
	(29, 'EE2023017', 'Kabir Singh', 'Electrical', 1, 'Lecture', 'MS Teams', '2023-09-10', 90, 80.5, 'Submitted', 'Tablet'),
	(30, 'BT2023013', 'Anika Banerjee', 'Biotech', 5, 'Lab', 'Moodle', '2023-09-11', 135, 97.0, 'Submitted', 'Desktop'),
	(31, 'CS2023014', 'Vihaan Joshi', 'Computer Science', 3, 'Assignment', 'Moodle', '2023-09-12', 65, NULL, 'Missing', NULL),
	(32, 'EC2023015', 'Dhruv Mehta', 'Electronics', 2, 'Lecture', 'MS Teams', '2023-09-11', 90, 86.5, 'Submitted', 'Desktop'),
	(33, 'ME2023016', 'Ishita Desai', 'Mechanical', 4, 'Project', 'Offline', '2023-09-13', 195, 89.5, 'Submitted', 'Desktop'),
	(34, 'EE2023017', 'Kabir Singh', 'Electrical', 1, 'Quiz', 'Google Classroom', '2023-09-12', 55, 72.0, 'Submitted', 'Mobile'),
	(35, 'CE2023018', 'Myra Kapoor', 'Civil', 2, 'Lecture', 'MS Teams', '2023-09-13', 90, 92.5, 'Submitted', 'Desktop'),
	(36, 'BT2023019', 'Reyansh Chawla', 'Biotech', 5, 'Lab', 'Moodle', '2023-09-14', 140, 98.0, 'Submitted', 'Desktop'),
	(37, 'CS2023020', 'Trisha Nair', 'Computer Science', 3, 'Assignment', 'Moodle', '2023-09-15', 80, 88.5, 'Submitted', 'Tablet'),
	(38, 'EC2023021', 'Ayaan Khan', 'Electronics', 2, 'Quiz', 'Google Classroom', '2023-09-14', 60, 81.0, 'Late', 'Mobile'),
	(39, 'ME2023022', 'Kiara Malhotra', 'Mechanical', 4, 'Lecture', 'MS Teams', '2023-09-15', 90, 84.0, 'Submitted', 'Desktop'),
	(40, 'EE2023023', 'Yashvi Reddy', 'Electrical', 1, 'Project', 'Offline', '2023-09-16', 185, 93.5, 'Submitted', 'Desktop'),
	(41, 'CE2023018', 'Myra Kapoor', 'Civil', 2, 'Lab', 'Moodle', '2023-09-16', 120, 90.0, 'Submitted', 'Desktop'),
	(42, 'BT2023019', 'Reyansh Chawla', 'Biotech', 5, 'Lecture', 'MS Teams', '2023-09-17', 90, 79.5, 'Submitted', 'Tablet'),
	(43, 'CS2023020', 'Trisha Nair', 'Computer Science', 3, 'Quiz', 'Google Classroom', '2023-09-16', 50, 85.0, 'Submitted', 'Mobile'),
	(44, 'EC2023021', 'Ayaan Khan', 'Electronics', 2, 'Assignment', 'Moodle', '2023-09-18', 70, NULL, 'Missing', NULL),
	(45, 'ME2023022', 'Kiara Malhotra', 'Mechanical', 4, 'Lab', 'Moodle', '2023-09-19', 130, 95.5, 'Submitted', 'Desktop'),
	(46, 'EE2023023', 'Yashvi Reddy', 'Electrical', 1, 'Lecture', 'MS Teams', '2023-09-18', 90, 82.0, 'Submitted', 'Tablet'),
	(47, 'CE2023024', 'Atharva Joshi', 'Civil', 2, 'Project', 'Offline', '2023-09-20', 205, 96.0, 'Submitted', 'Desktop'),
	(48, 'BT2023025', 'Anvi Gupta', 'Biotech', 5, 'Quiz', 'Google Classroom', '2023-09-19', 65, 78.5, 'Submitted', 'Mobile'),
	(49, 'CS2023026', 'Vedant Saxena', 'Computer Science', 3, 'Lecture', 'MS Teams', '2023-09-20', 90, 91.0, 'Submitted', 'Desktop'),
	(50, 'EC2023027', 'Ira Sharma', 'Electronics', 2, 'Lab', 'Moodle', '2023-09-21', 115, 89.5, 'Late', 'Tablet'),
	(51, 'ME2023028', 'Arnav Tiwari', 'Mechanical', 4, 'Assignment', 'Moodle', '2023-09-22', 75, 87.0, 'Submitted', 'Desktop'),
	(52, 'EE2023029', 'Misha Patel', 'Electrical', 1, 'Lecture', 'MS Teams', '2023-09-21', 90, 83.5, 'Submitted', 'Tablet'),
	(53, 'CE2023024', 'Atharva Joshi', 'Civil', 2, 'Quiz', 'Google Classroom', '2023-09-22', 55, 74.0, 'Submitted', 'Mobile'),
	(54, 'BT2023025', 'Anvi Gupta', 'Biotech', 5, 'Project', 'Offline', '2023-09-23', 195, 97.5, 'Submitted', 'Desktop'),
	(55, 'CS2023026', 'Vedant Saxena', 'Computer Science', 3, 'Lab', 'Moodle', '2023-09-24', 140, 94.0, 'Submitted', 'Desktop'),
	(56, 'EC2023027', 'Ira Sharma', 'Electronics', 2, 'Lecture', 'MS Teams', '2023-09-23', 90, 88.5, 'Submitted', 'Desktop'),
	(57, 'ME2023028', 'Arnav Tiwari', 'Mechanical', 4, 'Quiz', 'Google Classroom', '2023-09-24', 60, 80.0, 'Submitted', 'Mobile'),
	(58, 'EE2023029', 'Misha Patel', 'Electrical', 1, 'Assignment', 'Moodle', '2023-09-25', 85, NULL, 'Missing', NULL),
	(59, 'CE2023030', 'Pari Reddy', 'Civil', 2, 'Lecture', 'MS Teams', '2023-09-25', 90, 90.5, 'Submitted', 'Desktop'),
	(60, 'BT2023031', 'Krish Shah', 'Biotech', 5, 'Lab', 'Moodle', '2023-09-26', 125, 99.0, 'Submitted', 'Desktop'),
	(61, 'CS2023032', 'Aarushi Jain', 'Computer Science', 3, 'Project', 'Offline', '2023-09-27', 190, 92.5, 'Submitted', 'Desktop'),
	(62, 'EC2023033', 'Rudra Patel', 'Electronics', 2, 'Lecture', 'MS Teams', '2023-09-26', 90, 85.0, 'Submitted', 'Tablet'),
	(63, 'ME2023034', 'Siya Menon', 'Mechanical', 4, 'Quiz', 'Google Classroom', '2023-09-27', 50, 76.5, 'Late', 'Mobile'),
	(64, 'EE2023035', 'Virat Khanna', 'Electrical', 1, 'Lab', 'Moodle', '2023-09-28', 135, 93.0, 'Submitted', 'Desktop'),
	(65, 'CE2023030', 'Pari Reddy', 'Civil', 2, 'Assignment', 'Moodle', '2023-09-29', 70, 89.5, 'Submitted', 'Tablet'),
	(66, 'BT2023031', 'Krish Shah', 'Biotech', 5, 'Lecture', 'MS Teams', '2023-09-28', 90, 82.5, 'Submitted', 'Desktop'),
	(67, 'CS2023032', 'Aarushi Jain', 'Computer Science', 3, 'Quiz', 'Google Classroom', '2023-09-29', 55, 84.0, 'Submitted', 'Mobile'),
	(68, 'EC2023033', 'Rudra Patel', 'Electronics', 2, 'Project', 'Offline', '2023-09-30', 200, 95.5, 'Submitted', 'Desktop'),
	(69, 'ME2023034', 'Siya Menon', 'Mechanical', 4, 'Lecture', 'MS Teams', '2023-09-30', 90, 87.0, 'Submitted', 'Tablet'),
	(70, 'EE2023035', 'Virat Khanna', 'Electrical', 1, 'Assignment', 'Moodle', '2023-10-01', 80, 91.5, 'Submitted', 'Desktop');

-- 1. List all Computer Science students with their participation scores, sorted by highest score first.
SELECT * FROM student_engagements
WHERE department='Computer Science'
ORDER BY participation_score DESC;

-- 2. Show all activities that were submitted late, including student names and departments.
SELECT engagement_id,student_name,department,activity_type,date,submission_status FROM student_engagements
WHERE submission_status='Late';

-- 4. Find which department has the highest average participation score. 
SELECT department,ROUND(AVG(participation_score),2) AS Average_participation_score FROM student_engagements
GROUP BY department
ORDER BY Average_participation_score DESC 
LIMIT 1;

-- 5. Compare submission status rates ('Submitted'/'Late'/'Missing') across departments.
 SELECT department,submission_status,COUNT(*)/(SELECT COUNT(*) FROM student_engagements) AS Submission_rate FROM student_engagements
 GROUP BY department,submission_status
 ORDER BY department,submission_status;
 
-- 6. List departments where mobile device usage exceeds desktop usage for activities.
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

-- 7. Show daily engagement trends (number of activities per day).
SELECT DAYNAME(date) AS Day_of_WEEK, COUNT(*) AS Total_Activities FROM student_engagements
GROUP BY Day_of_WEEK
ORDER BY Total_Activities DESC;

-- 8. Identify the busiest day of the week for lab sessions.
SELECT DAYNAME(date) AS Day_of_WEEK,COUNT(*) AS Total_Lab_Activities FROM student_engagements
WHERE activity_type='Lab'
GROUP BY Day_of_WEEK
ORDER BY Total_Lab_Activities DESC 
LIMIT 1;

-- 9. Find students who haven't participated in any activities in the last 7 days.
SELECT student_rollno,student_name FROM student_engagements
WHERE student_rollno NOT IN(
	SELECT DISTINCT student_rollno
    FROM student_engagements
    WHERE date>=CURDATE()-INTERVAL 7 DAY);
    
-- 10. List students with perfect scores (100%) in any activity type.
SELECT student_rollno,student_name,activity_type,participation_score FROM student_engagements
WHERE participation_score=100.0;

-- 11. Find quizzes where the average score was below 75%.
SELECT engagement_id,AVG(participation_score) AS Average_participation_score FROM student_engagements
WHERE activity_type='Quiz'
GROUP BY engagement_id
HAVING Average_participation_score<75;

-- 12. Compare project scores between offline and online submissions.
SELECT platform, AVG(participation_score) AS Average_participation_score FROM student_engagements
WHERE activity_type='Project'
GROUP BY platform;

-- 13. Calculate the percentage of activities completed on mobile vs desktop vs tablet.
SELECT device_type, COUNT(*)/(SELECT COUNT(*) FROM student_engagements) AS Percentage FROM student_engagements
WHERE device_type IN('Mobile','Tablet','Desktop')
GROUP BY device_type;

-- 14. Show platform preference (Moodle/Google Classroom/MS Teams) by department.
SELECT department, platform, COUNT(*) AS Total_Used FROM student_engagements
GROUP BY department, platform;

-- 15. Find if device type correlates with higher/lower participation scores.
SELECT device_type,AVG(participation_score) AS Average_participation_score FROM student_engagements
WHERE participation_score IS NOT NULL
GROUP BY device_type
ORDER BY Average_participation_score DESC;