# IIT-Bombay
 Overview 
 Objectives 
 Database Creation

CREATE DATABASE IIT_BOM_db;
USE IIT_BOM_db; 
 Table Creation


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

