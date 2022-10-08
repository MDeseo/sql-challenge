## Assignment 9 - sql-challenge

## Background

A new data engineer was recently hired at Pewlett Hackard. The engineer's first major task was a research project on employees of the corporation from the 1980s and 1990s.
All that remains of the database of employees from that period are six CSV files.

For this assignment, tables were designed to hold data in the csv files, imported into a SQL database, and several queries were made in the Data Analysis section.

## DATA MODELLING

An Entity Relationship Diagram (ERD) using a physical model design was created to show the relationship between the tables in the csv files.
The model includes the entities, data types and their relationships using primary keys and foreign keys.
The sketch was created using QuickDBD (https://www.quickdatabasediagrams.com/).
The diagram documentation was exported to the folder 'EmployeeSQL' with file name 'Employee_Modelling.pdf' and the image as 'Employee_ERD.PNG' file.

## DATA ENGINEERING

A database was created in Postgres pgAdmin4 version 6.12.
A schema for each of the six CSV files provided in the folder 'data' was created and the 'schema' was saved in the folder 'EmployeeSQL.'
Primary key was assigned to unique column(s) and foreign key(s) were also specified.

The tables were created in the following csv file order:
1. titles
2. employees
3. departments
4. dept-manager
5. dept-emp
6. salaries

To avoid import problems with dates caused by US style dates in the csv files, pgAdmin database parameter property was updated.
In the Name category, 'Datestyle' was chosen, Value input was made 'MDY' and 'postgres' was chosen in Role. 
The  database parameters were updated and saved before importing the csv files. 
  
## DATA ANALYSIS

The following queries were carried out using the 'SELECT' syntax:
 
1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

The query file was saved as 'data_analysis' in the 'EmployeeSQL' folder.

