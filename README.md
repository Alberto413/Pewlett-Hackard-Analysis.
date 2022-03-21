# Pewlett-Hackard-Analysis.

## Overview of the Analysis 
 
The purpose of our project is to determine the number of retiring employees by title and identify which employees are eligible to to participate in the mentorship program. Our retiring employees by title information will show the titles of all employees born between January, 1 1952 and December, 31 1955. First we created a query that retrieved the emp_no, first_name and last_name columns from the employees table and retrieved the title, from_date and to_date columns of the titles table in our pewlett-hackard query. We joined both of these table on the primary key, filtered the data by birth_date and put the information into a new table. For the next two parts of deliverable 1 we created a unique_titles table to find the first occurance of the emp_no in our new table by using the DISTINCT ON function and for the last part of the deliverable we did ORDER BY COUNT to show us the total number of each title from our unique_titles table that we created. The second deliverable we wrote a query that retrieved columns from our employees and dept_emp table, filtered data on current employees born in 1965 then ordered the table by emp_no.

## Deliverable 1: The Number of Retiring Employees by Title

#### Deliverable Requirements:

Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. Because some employees may have multiple titles in the database—for example, due to promotions—you’ll need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. Then, use the COUNT() function to create a final table that has the number of retirement-age employees by most recent job title.

#### Results:

<img width="927" alt="Screen Shot 2022-03-14 at 2 37 57 PM" src="https://user-images.githubusercontent.com/95304774/158238934-68396aa9-818f-46ef-9af1-6cfe3b84caba.png">

1. A query is written and executed to create a Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955.

2. The Retirement Titles table is exported as retirement_titles.csv

3. A query is written and executed to create a Unique Titles table that contains the employee number, first and last name, and most recent title.

<img width="927" alt="Screen Shot 2022-03-14 at 2 45 17 PM" src="https://user-images.githubusercontent.com/95304774/158240046-030fc8ab-509d-4e6e-923f-bab64f0ceed0.png">

4. The Unique Titles table is exported as unique_titles.csv

5. A query is written and executed to create a Retiring Titles table that contains the number of titles filled by employees who are retiring.

6. The Retiring Titles table is exported as retiring_titles.csv

## Deliverable 2: The Employees Eligible for the Mentorship Program

#### Deliverable Requirements:

Using the ERD you created in this module as a reference and your knowledge of SQL queries, create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

#### Results:

1. A query is written and executed to create a Mentorship Eligibility table for current employees who were born between January 1, 1965 and December 31, 1965.

<img width="1119" alt="Screen Shot 2022-03-14 at 2 51 51 PM" src="https://user-images.githubusercontent.com/95304774/158241015-0d5bc253-0cf5-4271-b5e4-91d76e13e887.png">

2. The Mentorship Eligibility table is exported and saved as mentorship_eligibilty.csv"

From the finding of the eligible retirees, High Percentage of the workforce could retire at any given time.
From the job titles of the eligible retirees, the breakdown is below.
* 32,452 Staff
* 29,415 Senior Engineer
* 14,221 Engineer
* 8,047 Senior Staff
* 4,502 Technique Leader
* 1,761 Assistant Engineer

![image](https://user-images.githubusercontent.com/95304774/158241596-024776a6-c126-465d-b836-504ab4e897e6.png)

## Summary:

1) How many roles will need to be filled as the "silver tsunami" begins to make an impact?.

 * 72,458 roles are in urgent need to be filled out as soon as the workforce starts retiring at any given time as the "silver tsunami" begins to make an impact.

2) Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

 * No, we have 1,549 employees who are eligible for training and to participate in a mentorship program. Which is inadequate taking into account the amount of new employees.. 

