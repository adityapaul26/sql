-- Select employee number, name, and job for all clerks
select empno,ename,job
    from emp
    where job='CLERK';

-- Select department name and number for departments with ID greater than 20
select dname,deptno
    from dept
    where deptno > 20;

-- Select employee name, salary, and commission where commission exceeds salary
select ename,sal,comm
    from emp
    where comm > sal;

-- Select employee name and salary for those earning between 1000 and 2000
select ename,sal
    from emp
    where sal BETWEEN 1000 AND 2000;

-- Select employee details for those reporting to managers 7902, 7566, or 7788
select ename,empno,mgrno
    from emp
    where mgrno IN (7902,7566,7788);

-- Select employee names that start with the letter 'S'
select ename
    from emp
    where ename LIKE 'S%';

-- Select employee names that are exactly four characters long
select ename
    from emp
    where ename LIKE '____';

-- Select employee name and manager number for those without a manager
select ename,mgrno
    from emp
where mgrno IS NULL;

-- Select employee name and salary for those earning outside the 1000-2000 range
select ename,sal
    from emp
    where sal NOT BETWEEN 1000 AND 2000;

-- Select employee names that do not start with the letter 'M'
select ename
    from emp
    where ename NOT LIKE 'M%';

-- Select employee name and number for all employees who have a manager
select ename,empno
    from emp
    where mgrno IS NOT NULL;
