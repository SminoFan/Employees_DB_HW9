# Employee Database

# Data Modeling

Inspected the six CSVs and sketched out an ERD of the tables, using 
http://www.quickdatabasediagrams.com

![enter image description here](https://raw.githubusercontent.com/SminoFan/Employees_DB_HW9/master/Employees_ERD.png)

# Data Engineering
   
   Schema stored in schema.sql

 - Created a table schema for each of the six CSV files.
 - Specified data types, primary keys, foreign keys.
 - Imported each CSV file into the corresponding SQL table.


# Data Analysis

Performed a sequence of queries stored in file : query.sql

 - employee number, last name, first name, gender, and salary
 - employees who were hired in 1986
 - the manager of each department
 - the department of each employee
 - employees whose first name is "Hercules" and last names begin
   with "B."
 - all employees in the Sales department
 - all employees in the Sales and Development departments
 - how many employees share each last name

# Data Visualization (Bonus)

Notebook stored at Employees_SQL_HW9.ipynb

 - Using SQLAlchemy, imported the SQL database into Pandas.
 - Employee Table & Salary Table
 - Merged (on emp_no) the two tables
 - Performed groupby on 'title' column
 - Performed mean on salary column
 - Created a bar chart of average salary by title

![enter image description here](https://raw.githubusercontent.com/SminoFan/Employees_DB_HW9/master/avg_salaries_title.png)