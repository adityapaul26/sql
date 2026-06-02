-- 1. Display all employees who have the minimum salary in the company.

SELECT *
FROM emp
WHERE sal = (
    SELECT MIN(sal)
    FROM emp
);


-- 2. Display employee name, salary, and department number of employees
--    whose salary matches the minimum salary of any department.

SELECT ename, sal, deptno
FROM emp
WHERE sal IN (
    SELECT MIN(sal)
    FROM emp
    GROUP BY deptno
);


-- 3. Display employee name, salary, and department number of employees
--    who have the minimum salary within their respective departments.

SELECT ename, sal, deptno
FROM emp
WHERE (sal, deptno) IN (
    SELECT MIN(sal), deptno
    FROM emp
    GROUP BY deptno
);


-- 4. Display employee name, job, and department number of employees
--    whose salary is greater than ANY salary in department 30.

SELECT ename, job, deptno
FROM emp
WHERE sal > ANY (
    SELECT DISTINCT sal
    FROM emp
    WHERE deptno = 30
)
ORDER BY sal DESC;


-- 5. Display employee name, job, and department number of employees
--    whose salary is greater than ALL salaries in department 30.

SELECT ename, job, deptno
FROM emp
WHERE sal > ALL (
    SELECT DISTINCT sal
    FROM emp
    WHERE deptno = 30
)
ORDER BY sal DESC;


-- 6. Display department numbers and average salaries of departments
--    whose average salary is greater than the average salary of department 30.

SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno
HAVING AVG(sal) > (
    SELECT AVG(sal)
    FROM emp
    WHERE deptno = 30
);


-- 7. Display the job and average salary of the job category
--    having the highest average salary.

SELECT job, AVG(sal)
FROM emp
GROUP BY job
HAVING AVG(sal) = (
    SELECT MAX(avg_sal)
    FROM (
        SELECT AVG(sal) AS avg_sal
        FROM emp
        GROUP BY job
    )
);


-- 8. Display employee name, job, hire date, and salary of employees
--    whose salary is greater than the maximum salary in the SALES department.

SELECT ename, job, hirdate, sal
FROM emp
WHERE sal > (
    SELECT MAX(sal)
    FROM emp
    WHERE deptno = (
        SELECT deptno
        FROM dept
        WHERE dname = 'SALES'
    )
);
