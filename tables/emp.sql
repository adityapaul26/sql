Create table emp(
	empno NUMBER(4) constraint emp_pk PRIMARY KEY,
	ename VARCHAR2(10) constraint en_chk Check(ename=UPPER(ename)),
	job VARCHAR2(10),
	mgrno NUMBER(4) constraint mno_fk References emp(empno),
	hiredate date default sysdate,
	sal NUMBER(7,2) constraint sal_nm NOT NULL,
	comm NUMBER(7,2),
	deptno NUMBER(4) constraint dept_nm NOT NULL,
	constraint emp_dept FOREIGN KEY(deptno) references dept(deptno) ON DELETE CASCADE);

desc emp;
