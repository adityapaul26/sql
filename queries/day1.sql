-- TOPICS: Basic Selection, Arithmetic Operations, Aliases, Null Handling (NVL), 
-- String Concatenation, Distinct Values, Sorting (ORDER BY).

---------------------------------------------------------
-- BASIC SELECTION
---------------------------------------------------------
-- 1. Select all columns from the emp table
SELECT * FROM emp;

-- 2. Select employee number, name, and job from the emp table
SELECT empno,ename,job FROM emp;

---------------------------------------------------------
-- ARITHMETIC OPERATIONS & ALIASES
---------------------------------------------------------
-- 3. Select employee name and their calculated annual salary (monthly salary * 12)
SELECT ename , sal*12 FROM emp;

-- 4. Select employee name and annual salary with the alias "Ann-sal"
SELECT ename,sal*12 "Ann-sal" FROM emp;

-- 5. Select employee name and annual salary including a $250 monthly bonus
SELECT ename,(sal+250)*12 FROM emp;

-- 6. Calculate total annual income (salary * 12 + commission), treating NULL commissions as 0
SELECT ename ,sal*12+NVL(comm,0) "AnnualSal" FROM emp;

---------------------------------------------------------
-- STRING CONCATENATION & FORMATTING
---------------------------------------------------------
-- 7. Concatenate employee name and employee number into a single column
SELECT ename||empno FROM emp;

-- 8. Concatenate employee name and employee number with a hyphen separator
SELECT ename||'-'||empno FROM emp;

-- 9. Create a formatted string for each employee and alias it as "EMPLOYEE"
SELECT empno||'-'||ename||' WORKS IN DEPARTMENT' "EMPLOYEE" FROM emp;

-- 10. Concatenate a constant value (50) with a hyphen and the employee number
SELECT 50||'-'||empno FROM emp;

---------------------------------------------------------
-- DISTINCT VALUES
---------------------------------------------------------
-- 11. Select unique combinations of department numbers and jobs
SELECT DISTINCT deptno,job FROM emp;

---------------------------------------------------------
-- SORTING (ORDER BY)
---------------------------------------------------------
-- 12. Select employee details ordered by name in ascending order
SELECT ename,job,sal*12,deptno FROM emp ORDER BY ename;

-- 13. Select employee details ordered by name in descending order
SELECT ename,job,sal*12 FROM emp ORDER BY ename DESC;

-- 14. Select department and salary, ordered by department (ASC) and then salary (DESC)
SELECT deptno,sal FROM emp ORDER BY deptno,sal DESC;

-- 15. Select department and salary, ordered by department (DESC) and then salary (ASC)
SELECT deptno,sal FROM emp ORDER BY deptno DESC,sal;
