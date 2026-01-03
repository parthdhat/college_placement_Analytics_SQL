# 🎓 College Placement Analytics – SQL Case Study

## 📌 Overview
This project analyzes college placement data using SQL to derive actionable insights for placement cells and academic stakeholders.  
The analysis focuses on placement rates, salary trends, recruiter performance, and departmental outcomes.

---

## 🎯 Objectives
- Analyze placement rate across departments  
- Study salary trends based on CGPA  
- Identify top recruiting companies  
- Determine highest salary package per department  
- Analyze year-wise placement trends  

---

## 🗄️ Database Schema
The project uses a relational database with the following tables:

- **students** – student details (department, CGPA, graduation year)  
- **companies** – recruiter information and sector  
- **applications** – applications submitted by students  
- **offers** – placement offers with salary packages  

---

## 🛠️ Tech Stack
- SQL (MySQL)
- MySQL Workbench

---

## 📊 Key Analyses & Insights
- Department-wise placement rate calculation  
- CGPA-based salary bucketing and analysis  
- Top recruiters based on number of offers  
- Highest salary package per department using window functions  
- Year-wise placement trend analysis  

📌 Detailed insights are documented in [`insights.md`](insights.md)

---

## 📈 Sample Outputs
Below are sample SQL query outputs:

![Placement Rate](screenshots/placement_rate.png)
![CGPA vs Package](screenshots/cgpa_vs_package.png)
![Top Recruiters](screenshots/top_recruiters.png)
![Highest Package](screenshots/highest_package.png)

---

## 📁 Project Structure
College-Placement-Analytics/
│
├── schema.sql
├── sample_data.sql
├── analysis_queries.sql
├── insights.md
├── screenshots/
└── README.md


---

## 💡 Key SQL Concepts Used
- JOINs (INNER, LEFT)
- GROUP BY & HAVING
- Common Table Expressions (CTEs)
- Window Functions (RANK)
- Business KPI calculations



