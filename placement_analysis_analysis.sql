SELECT 
  s.department,
  COUNT(DISTINCT o.student_id) AS placed_students,
  COUNT(DISTINCT s.student_id) AS total_students,
  ROUND(
    COUNT(DISTINCT o.student_id) * 100.0 / COUNT(DISTINCT s.student_id), 2
  ) AS placement_rate_percent
FROM students s
LEFT JOIN offers o ON s.student_id = o.student_id
GROUP BY s.department;

WITH cgpa_bucket AS (
  SELECT
    student_id,
    CASE
      WHEN cgpa >= 9 THEN '9+'
      WHEN cgpa >= 8 THEN '8-9'
      WHEN cgpa >= 7 THEN '7-8'
      ELSE '<7'
    END AS cgpa_range
  FROM students
)
SELECT
  c.cgpa_range,
  ROUND(AVG(o.package_lpa), 2) AS avg_package_lpa
FROM cgpa_bucket c
JOIN offers o ON c.student_id = o.student_id
GROUP BY c.cgpa_range
ORDER BY avg_package_lpa DESC;

SELECT
  c.name AS company,
  COUNT(o.offer_id) AS offers_made
FROM companies c
JOIN offers o ON c.company_id = o.company_id
GROUP BY c.name
ORDER BY offers_made DESC;

SELECT
  s.year,
  COUNT(DISTINCT o.student_id) AS placed_students
FROM students s
LEFT JOIN offers o ON s.student_id = o.student_id
GROUP BY s.year
ORDER BY s.year;

SELECT
  department,
  COUNT(*) AS unplaced_students
FROM students
WHERE student_id NOT IN (
  SELECT DISTINCT student_id FROM offers
)
GROUP BY department;

SELECT department, name, package_lpa
FROM (
  SELECT
    s.department,
    s.name,
    o.package_lpa,
    RANK() OVER (PARTITION BY s.department ORDER BY o.package_lpa DESC) AS rnk
  FROM students s
  JOIN offers o ON s.student_id = o.student_id
) ranked
WHERE rnk = 1;

SELECT
  c.name AS company,
  COUNT(DISTINCT o.offer_id) * 100.0 / COUNT(DISTINCT a.app_id) AS conversion_rate
FROM companies c
LEFT JOIN applications a ON c.company_id = a.company_id
LEFT JOIN offers o ON c.company_id = o.company_id
GROUP BY c.name;

WITH cgpa_bucket AS (
  SELECT
    student_id,
    CASE
      WHEN cgpa >= 9 THEN '9+'
      WHEN cgpa >= 8 THEN '8-9'
      WHEN cgpa >= 7 THEN '7-8'
      ELSE '<7'
    END AS cgpa_range
  FROM students
)
SELECT
  cgpa_range,
  ROUND(AVG(package_lpa), 2) AS avg_package
FROM cgpa_bucket cb
JOIN offers o ON cb.student_id = o.student_id
GROUP BY cgpa_range
ORDER BY avg_package DESC;
