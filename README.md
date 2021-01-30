# Pewlett-Hackard-Analysis
Module 7 - SQL

## Oveview
We are partnering with Pewlett-Hackard, a large tech company with thousands of employees, to analyze 
the composition fo their current workforce.  The primary concerns are:
- the number of "baby boomers" who will soon be eligible for retirement, and 
- the number of positions this will need to be filled, either by internal promotions or external hires.
We used SQL to build a new employee database from the CSV files that had been used by Pewlett-Hackard previously. 

## Results
- 63.8% of upcoming retirements will come from roles with "Senior" in the titles, indicating that these roles require more experience and may be more difficult to backfill.

- 50.2% of upcoming retirements are some type of Engineer (Senior Engineer, Engineer, Assistant Engineer), indicating that a level of technical expertise will be required when backfilling these roles

    ![retiring_titles](https://github.com/benclark62/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png)

    *Upcoming retirements by Title, based on age and tenure with company*

- 1,549 employees have been identified as eligible for the Mentorship Program.  Depending on ths structure of this program, this number of mentors may be inadequate given the number of projected retirees.
- The largest cohort of employees identified for the Mentorship Program are Engineers (409), followed by Senior Staff (407), and Staff (317). 

## Summary
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
**90,398 unique roles have been identified as retirement risks**

- Are there enough qualified, retirement-ready employees in the departments to 
mentor the next generation of Pewlett Hackard employees?
**No, only 1,549 employees have been identified to participate in the mentorship program**

- Two additional queries that will provide more insight into upcoming 'silver tsunami'
  - Provide a breakdown of the titles identified as eligible for the Mentorship Program.  This will tell us if we have the right proportions of professional experience to match what will be lost from the retirees.

    ![mentorship_titles](https://github.com/benclark62/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_titles.png)

    *SQL query to determine the titles employees in Mentorship Program*

  - Profile the next wave of Senior management by filtering for younger (birth dates between 1/1/1960 and 12/31/1965), newer (hire dates between 1/1/1990 and 12/31/1993), and active (latest role date = 1/1/9999) employees.  This provides a list of 27,118 employees that will be next-in-line for many of the soon-to-be-vacant roles.

    ![next_wave_employees](https://github.com/benclark62/Pewlett-Hackard-Analysis/blob/main/Resources/next_wave_employees.png)

    *SQL query to identify the 'next generation' of leaders at Pewlett-Hackard based on age, tenure, and title*
