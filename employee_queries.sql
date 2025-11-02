/* =============================================================
   Project: Employee SQL Analysis
   Dataset: HR Employee Dataset (Education, JoiningYear, City, etc.)
   Tool: MySQL Workbench
   Description: Intermediate-level SQL queries demonstrating
                GROUP BY, aggregate functions, and filtering.
   ============================================================= */
   
-- Query 1: Find the average experience of employees in each city
-- -------------------------------------------------------------
SELECT city,round(avg(experienceincurrentdomain),2) AS average_experience FROM employee GROUP BY city;

-- Query 2: List each education level and the average PaymentTier
-- ---------------------------------------------------------------
SELECT education,round(avg(paymenttier),2) AS average_pay FROM employee GROUP BY education;

-- Query 3: Total number of employees in each PaymentTier
-- -------------------------------------------------------
SELECT paymenttier,count(*) AS count FROM employee GROUP BY paymenttier;

-- Query 4: Display the average age of employees grouped by gender
-- ---------------------------------------------------------------
SELECT gender,round(avg(age),2) as average_age from employee GROUP BY gender;

-- Query 5: Find the city with the highest average PaymentTier
-- -----------------------------------------------------------
SELECT city,round(avg(paymenttier),2) AS average_paytier FROM employee GROUP BY city 
ORDER BY average_paytier desc limit 1;

-- Query 6: Count the number of employees who joined each year
-- -------------------------------------------------------------
SELECT joiningyear, count(*) AS employee_count FROM employee GROUP BY joiningyear ORDER BY joiningyear desc;

-- Query 7: Find the education levels where the average age of employees is greater than 25.
-- ----------------------------------------------------------------------------------------
SELECT education,round(avg(age),2) AS avg_age FROM employee GROUP BY education HAVING avg_age>25;

-- Query 8: Display the youngest employee in each education level
-- -------------------------------------------------------------
SELECT education,min(age) AS youngest_employee FROM employee GROUP BY education;

-- Query 9: Find the gender distribution in each city
-- -----------------------------------------------------
SELECT city,gender,count(*) AS gender_count FROM employee GROUP BY city,gender ORDER BY city;

-- Query 10: List the education level and average age of employees
--            whose PaymentTier is 3 and experience >= 2 years
-- -------------------------------------------------------------
SELECT education,round(avg(age),2) AS avg_age FROM employee 
WHERE paymentTier=3 AND experienceincurrentdomain>=2 GROUP BY education;



