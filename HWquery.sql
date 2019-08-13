----1
SELECT e.emp_no
	,last_name
	,first_name
	,gender
	,salary
FROM employeestb e
JOIN salariestb s on s.emp_no = e.emp_no;

----2
SELECT *
FROM employeestb
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

---3
SELECT dm.dept_no
	,dept_name
	,dm.emp_no
	,last_name
	,first_name
	,from_date
	,to_date
FROM employeestb e
JOIN deptmanagertb dm on dm.emp_no = e.emp_no
JOIN departmentstb d on d.dept_no = dm.dept_no;

---4
SELECT e.emp_no
	,last_name
	,first_name
	,d.dept_name
FROM employeestb e
JOIN deptemptb de on de.emp_no = e.emp_no
JOIN departmentstb d on d.dept_no = de.dept_no;

---5
SELECT *
FROM employeestb
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

---6
SELECT e.emp_no
	,last_name
	,first_name
	,d.dept_name
FROM employeestb e
JOIN deptemptb de on de.emp_no = e.emp_no
JOIN departmentstb d on d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

---7
SELECT e.emp_no
	,last_name
	,first_name
	,d.dept_name
FROM employeestb e
JOIN deptemptb de on de.emp_no = e.emp_no
JOIN departmentstb d on d.dept_no = de.dept_no
WHERE d.dept_name IN ('Sales','Development');

---8
SELECT last_name, count(last_name) Count
FROM employeestb
GROUP BY last_name
ORDER BY Count DESC;

