CREATE DATABASE labdb;
\c labdb
CREATE TABLE employees (id serial PRIMARY KEY, name text, dept text);
INSERT INTO employees (name, dept) VALUES ('Demo One','IT'), ('Demo Two','HR'), ('Demo Three','Finance');
SELECT count(*) FROM employees;
