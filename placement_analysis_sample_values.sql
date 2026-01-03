INSERT INTO students VALUES
(1,'Amit Sharma','CSE',9.1,2024),
(2,'Neha Verma','CSE',8.6,2024),
(3,'Rahul Mehta','ECE',8.2,2024),
(4,'Sneha Iyer','ECE',9.4,2024),
(5,'Karan Patel','ME',7.1,2024),
(6,'Anjali Singh','ME',7.8,2024),
(7,'Rohit Kumar','CSE',6.9,2023),
(8,'Pooja Nair','ECE',8.9,2023),
(9,'Aditya Rao','CIVIL',7.4,2023),
(10,'Vikram Joshi','CSE',9.5,2023);

INSERT INTO companies VALUES
(101,'Google','Product'),
(102,'Amazon','Product'),
(103,'Microsoft','Product'),
(104,'TCS','Service'),
(105,'Infosys','Service');

INSERT INTO applications VALUES
(1,1,101),
(2,1,102),
(3,2,101),
(4,2,104),
(5,3,102),
(6,4,103),
(7,5,104),
(8,6,105),
(9,7,104),
(10,8,103),
(11,9,105),
(12,10,101),
(13,10,102);

INSERT INTO offers VALUES
(1,1,101,45.0),
(2,1,102,32.0),
(3,2,104,7.5),
(4,3,102,28.0),
(5,4,103,35.0),
(6,6,105,6.5),
(7,8,103,30.0),
(8,10,101,50.0);

SELECT COUNT(*) FROM students;
SELECT COUNT(*) FROM companies;
SELECT COUNT(*) FROM applications;
SELECT COUNT(*) FROM offers;

SELECT * FROM offers;