SELECT * FROM departments;
SELECT department_id, Location_id FROM departments;
/* EXPRESION ARITMETICA */
SELECT last_name, salary, salary + 300 AS "Con Aumento" FROM employees;
/* CONCATENACION */
SELECT last_name || job_id AS "Employees" FROM employees;
/* CADENA DE CARACTERES LITERALES */
SELECT last_name || ' is a ' || job_id AS "Employee Details" FROM employees;

/* OPERADOR DE QUOTA (q) */
/*SELECT  department_name || q'[ Department's Manager Id: ]' || manager_id AS "Department and Manager" 
FROM departments; */

/* Clausula DISTINCT, retorna valores unicos o que no se repiten */
SELECT DISTINCT department_id FROM employees;
/* Clausula WHERE, cuando una condicion se cumpla */
SELECT employee_id, last_name, job_id, department_id
FROM employees
WHERE department_id = 90;
/* CARACTERES STRINGS and DATES, busquedas. 
Se utilizan comillas simples, los valores de caracteres son case-sensitive
y los valores de fecha son format-sensitive (DD-MON-RR)
*/
SELECT last_name, job_id, department_id
FROM employees
WHERE last_name = 'Whalen';

SELECT last_name FROM employees WHERE hire_date = '17-OCT-03';
/* operadores de comparacion */
SELECT last_name, salary FROM employees WHERE salary <= 3000;
/* BETWEEN es un operador basado en rangos */
SELECT last_name, salary FROM employees 
WHERE salary BETWEEN 2500 AND 3500;
/* IN es un operador que nos permite identificar ciertos valores */
SELECT employee_id, last_name, salary, manager_id
FROM employees
WHERE manager_id IN (100, 101, 201);
/* Operador LIKE, permite encontrar coincidencias exactas
% denota cero o mas caracteres
_ denota un caracter
*/
SELECT first_name FROM employees
WHERE first_name LIKE 'S%';
/* buscando en apellidos los que tengan en el segundo caracter una o */
SELECT last_name FROM employees
WHERE last_name LIKE '_o%';
