CREATE DATABASE college_placement_analytics;
USE college_placement_analytics;

CREATE TABLE students (
  student_id INT PRIMARY KEY,
  name VARCHAR(100),
  department VARCHAR(50),
  cgpa DECIMAL(3,2),
  year INT
);

CREATE TABLE companies (
  company_id INT PRIMARY KEY,
  name VARCHAR(100),
  sector VARCHAR(50)
);

CREATE TABLE applications (
  app_id INT PRIMARY KEY,
  student_id INT,
  company_id INT,
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

CREATE TABLE offers (
  offer_id INT PRIMARY KEY,
  student_id INT,
  company_id INT,
  package_lpa DECIMAL(5,2),
  FOREIGN KEY (student_id) REFERENCES students(student_id),
  FOREIGN KEY (company_id) REFERENCES companies(company_id)
);
SHOW TABLES;




















