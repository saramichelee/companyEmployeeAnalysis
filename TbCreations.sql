DROP TABLE IF EXISTS departmentsTb;

CREATE TABLE departmentsTb (
dept_no VARCHAR(10) PRIMARY KEY,
dept_name VARCHAR(30)
);

SELECT * FROM departmentsTb;
-----------------------------------
DROP TABLE IF EXISTS deptEmpTb;

CREATE TABLE deptEmpTb (
	emp_no INT,
	dept_no VARCHAR(10),
	from_date date,
	to_date date,
	FOREIGN KEY (dept_no) REFERENCES departmentsTb(dept_no)
);

SELECT * FROM deptEmpTb;
-----------------------------------
DROP TABLE IF EXISTS deptManagerTb;

CREATE TABLE deptManagerTb (
	dept_no VARCHAR(10),
	emp_no INT,
	from_date date,
	to_date date,
	FOREIGN KEY (dept_no) REFERENCES departmentsTb(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employeesTb(emp_no)
);

SELECT * FROM deptManagerTb;
-----------------------------------
DROP TABLE IF EXISTS employeesTb;

CREATE TABLE employeesTb (
	emp_no INT PRIMARY KEY,
	birth_date date,
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	gender VARCHAR (5),
	hire_date date
);

SELECT * FROM employeesTb;
-----------------------------------
DROP TABLE IF EXISTS salariesTb;

CREATE TABLE salariesTb (
	emp_no INT,
	salary INT,
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employeesTb(emp_no)
);

SELECT * FROM salariesTb;
-----------------------------------
DROP TABLE IF EXISTS titlesTb;

CREATE TABLE titlesTb (
	emp_no INT,
	title VARCHAR (30),
	from_date date,
	to_date date,
	FOREIGN KEY (emp_no) REFERENCES employeesTb(emp_no)
);

SELECT * FROM titlesTb;

