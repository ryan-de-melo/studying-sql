-- Questão 1:
SELECT 
    * 
FROM
    department;


-- Questão 2:
SELECT
    * 
FROM
    dependent;


-- Questão 3:
SELECT
    *
FROM
    dept_locations;


-- Questão 4:
SELECT
    *
FROM
    employee;


-- Questão 5:
SELECT
    *
FROM
    project;


-- Questão 6:
SELECT
    * 
FROM
    works_on;


-- Questão 7:
SELECT
    fname, lname
FROM
    employee e
WHERE
    e.sex = 'M';


-- Questão 8:
SELECT
    fname
FROM
    employee e
WHERE
    e.sex = 'M' AND e.superssn IS NULL;


-- Questão 9:
SELECT
    e.fname AS employee_fname, s.fname AS super_fname
FROM 
    employee e, employee s
WHERE
    e.superssn IS NOT NULL AND e.superssn = s.ssn;  


-- Questão 10:
SELECT 
    e.fname 
FROM 
    employee e, employee s 
WHERE e.superssn IS NOT NULL AND e.superssn = s.ssn AND s.fname = 'Franklin';


-- Questão 11:
SELECT 
    d.dname, l.dlocation 
FROM 
    department d, dept_locations l 
WHERE 
    d.dnumber = l.dnumber; 


-- Questão 12:
SELECT 
    d.dname 
FROM 
    department d, dept_locations l 
WHERE 
    d.dnumber = l.dnumber AND SUBSTRING(l.dlocation, 1, 1) = 'S';


-- Questão 13:
SELECT 
    e.fname AS employee_fname, e.lname AS employee_lname, d.dependent_name AS dependent_name 
FROM 
    employee e, dependent d 
WHERE 
    d.essn = e.ssn; 


-- Questão 14:
SELECT 
    e.fname || ' ' || e.lname AS full_name, e.salary 
FROM 
    employee e 
WHERE 
    e.salary > 50000.00;


-- Questão 15:
SELECT 
    p.pname AS project_name, d.dname AS department_name 
FROM 
    project p, department d 
WHERE 
    p.dnum = d.dnumber;


-- Questão 16:
SELECT
    p.pname AS project_name, e.fname AS manager_fname
FROM 
    project p, department d, employee e 
WHERE 
    p.dnum = d.dnumber AND d.mgrssn = e.ssn AND p.pnumber < 30;


-- Questão 17:
SELECT 
    p.pname AS project_name, e.fname AS employee_fname 
FROM 
    project p, employee e, works_on w 
WHERE 
    p.pnumber = w.pno AND e.ssn = w.essn;  


-- Questão 18:
SELECT
    d.dependent_name AS dependent_name, e.fname AS employee_fname, d.relationship AS relationship 
FROM dependent 
    d, employee e, works_on w, project p 
WHERE 
    w.pno = 30 AND e.ssn = w.essn;