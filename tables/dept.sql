Create table dept(
	deptno NUMBER(4) constraint dno_pk PRIMARY KEY,
	dname varchar2(30) constraint dn_chk Check(dname=UPPER(dname)),
	loc varchar2(30));

desc dept;