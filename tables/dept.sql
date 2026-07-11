CREATE TABLE dept(
	deptno NUMBER(4) CONSTRAINT dno_pk PRIMARY KEY,
	dname VARCHAR2(30) CONSTRAINT dn_chk CHECK(dname=UPPER(dname)),
	loc VARCHAR2(30));

DESC dept;
