-- This uses variables to insert data

-- INSERT INTO emp(empno,ename,job, hiredate,sal,comm,deptno)
--     VALUES ( &eno,'&ename','&job','&hr',&sl,&cm,&dno);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7369, 'SMITH', 'CLERK', DATE '1980-12-17', 800, NULL, 20);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7499, 'ALLEN', 'SALESMAN', DATE '1981-02-20', 1600, 300, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7521, 'WARD', 'SALESMAN', DATE '1981-02-22', 1250, 500, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7566, 'JONES', 'MANAGER', DATE '1981-04-02', 2975, NULL, 20);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7654, 'MARTIN', 'SALESMAN', DATE '1981-09-28', 1250, 1400, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7698, 'BLAKE', 'MANAGER', DATE '1981-05-01', 2850, NULL, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7782, 'CLARK', 'MANAGER', DATE '1981-06-09', 2450, NULL, 10);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7788, 'SCOTT', 'ANALYST', DATE '1987-07-13', 3000, NULL, 20);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7839, 'KING', 'PRESIDENT', DATE '1981-11-17', 5000, NULL, 10);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7844, 'TURNER', 'SALESMAN', DATE '1981-09-08', 1500, NULL, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7876, 'ADAMS', 'CLERK', DATE '1987-07-13', 1100, NULL, 20);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7900, 'JAMES', 'CLERK', DATE '1981-12-03', 950, NULL, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7902, 'FORD', 'ANALYST', DATE '1981-12-03', 3000, NULL, 20);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7934, 'MILLER', 'CLERK', DATE '1982-01-23', 1300, NULL, 10);



-- now update MGRNO values
UPDATE emp SET mgrno = 7902 WHERE empno = 7369;
UPDATE emp SET mgrno = 7698 WHERE empno = 7499;
UPDATE emp SET mgrno = 7698 WHERE empno = 7521;
UPDATE emp SET mgrno = 7839 WHERE empno = 7566;
UPDATE emp SET mgrno = 7698 WHERE empno = 7654;
UPDATE emp SET mgrno = 7839 WHERE empno = 7698;
UPDATE emp SET mgrno = 7839 WHERE empno = 7782;
UPDATE emp SET mgrno = 7566 WHERE empno = 7788;
UPDATE emp SET mgrno = NULL WHERE empno = 7839;
UPDATE emp SET mgrno = 7698 WHERE empno = 7844;
UPDATE emp SET mgrno = 7788 WHERE empno = 7876;
UPDATE emp SET mgrno = 7698 WHERE empno = 7900;
UPDATE emp SET mgrno = 7566 WHERE empno = 7902;
UPDATE emp SET mgrno = 7782 WHERE empno = 7934;
