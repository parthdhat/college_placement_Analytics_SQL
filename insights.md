#  College Placement Analytics – Key Insights

This document summarizes the key insights derived from analyzing college placement data using SQL.

---

1️⃣ Placement Rate by Department

- Computer Science (CSE) and Electronics (ECE) departments show **higher placement rates** compared to core branches.
- Core branches like Mechanical and Civil have a **lower percentage of placed students**, indicating a need for targeted placement support.

 Insight: Placement performance varies significantly across departments.

---

 2️⃣ CGPA vs Salary Trend

- Students with **CGPA ≥ 9** secure the **highest average salary packages**.
- A clear positive correlation exists between **academic performance and compensation**.
- Students with CGPA below 7 receive comparatively lower salary offers.

 Insight: CGPA is a strong predictor of salary outcomes.

---

 3️⃣ Top Recruiting Companies

- Product-based companies such as Google, Amazon, and Microsoft make **fewer but higher-paying offers**.
- Service-based companies like TCS and Infosys offer **more consistent but lower packages**.

Insight: Recruiter type impacts both offer volume and salary levels.

---

 4️⃣ Highest Package per Department

- Each department has at least one top-performing student securing a significantly higher package than peers.
- Window functions were used to identify **department-wise highest offers** efficiently.

Insight: Identifying top performers helps benchmark departmental success.

---

 5️⃣ Offer Conversion Rate by Company

- Product-based companies exhibit **higher offer conversion rates**, indicating stricter but effective hiring pipelines.
- Service-based companies have a **broader application pool with lower conversion rates**.

Insight: Conversion rate highlights recruitment efficiency across companies.

---

 6️⃣ Year-wise Placement Trend

- Recent graduating batches show an **improving placement trend**.
- Placement outcomes vary by year, reflecting market conditions and recruiter demand.

Insight: Placement performance is influenced by external market factors.

---

##  Overall Conclusion

- Strong academic performance, department, and recruiter type are key drivers of placement success.
- Advanced SQL techniques enabled extraction of **actionable insights** from relational data.
- The analysis can support **placement cell planning and student career guidance**.

---

## Tools & Techniques Used

- SQL (MySQL)
- JOINs, GROUP BY, HAVING
- Common Table Expressions (CTEs)
- Window Functions
- Business KPI analysis
