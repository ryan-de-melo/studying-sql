-- Questão 1:
SELECT
    COUNT(*)
FROM
    employee e
WHERE
    e.sex = 'F';



-- Questão 2:
SELECT
    AVG(e.salary) AS average_salary
FROM 
    employee AS e
WHERE
    e.sex = 'M'
    AND e.address LIKE '%TX%';


-- Questão 3:
SELECT
    s.superssn AS ssn_supervisor,
    COUNT(*) AS qtd_supervisionados
FROM
    employee s
GROUP BY 
    s.superssn
ORDER BY 
    qtd_supervisionados ASC;



-- Questão 4:
SELECT
    s.fname AS nome_supervisor,
    COUNT(*) AS qtd_supervisionados
FROM
    employee AS s
INNER JOIN 
    employee AS e 
    ON e.superssn = s.ssn
GROUP BY
    s.ssn
ORDER BY
    qtd_supervisionados ASC;


-- Questão 5:
SELECT
    s.fname AS nome_supervisor,
    COUNT(*) AS qtd_supervisionados
FROM
    employee AS s
RIGHT JOIN 
    employee AS e 
    ON e.superssn = s.ssn
GROUP BY
    s.ssn;


-- Questão 6:
SELECT 
    MIN(qtd_funcionarios) AS qtd
FROM (
    SELECT 
        w.pno,
        COUNT(*) AS qtd_funcionarios
    FROM 
        works_on w
    GROUP BY
        w.pno
) AS t;

-- Questão 7: //TODO: consertar 
SELECT
    t.pno AS num_projeto,
    MIN(qtd_funcionarios) AS qtd_func
FROM (
    SELECT 
        w.pno,
        COUNT(*) AS qtd_funcionarios
    FROM 
        works_on w
    GROUP BY
        w.pno
) AS t;


