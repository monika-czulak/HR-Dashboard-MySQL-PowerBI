# HR-Dashboard-MySQL-PowerBI

![image](https://github.com/monika-czulak/HR-Dashboard-MySQL-PowerBI/assets/109820128/5ec4bcbf-25e0-457c-a18a-763c0de3e3e5)

## Data Used
- Data - HR Data with over 22000 rows from the year 2000 to 2020
- Data Cleaning & Analysis - MySQL Workbench
- Data Visualization - PowerBI

## Questions
1. What is the gender breakdown of employees in the company?
2. What is the race/ethnicity breakdown of employees in the company?
3. What is the age distribution of employees in the company?
4. How many employees work at headquarters versus remote locations?
5. What is the average length of employment for employees who have been terminated?
6. How does the gender distribution vary across departments and job titles?
7. What is the distribution of job titles across the company?
8. Which department has the highest turnover rate?
9. What is the distribution of employees across locations by state?
10. How has the company's employee count changed over time based on hire and term dates?
11. What is the tenure distribution for each department?
    
## Summary of Findings
- There are more male employees.
- White race is the most dominant while Native Hawaiian and American Indian are the least dominant.
- 5 age groups were created (18-24, 25-34, 35-44, 45-54, 55-64). A large number of employees were between 35-44 followed by 25-34 while the smallest group was 55-64.
- A large number of employees work at the headquarters versus remotely.
- The average length of employment for terminated employees is around 8 years.
- The gender distribution across departments is fairly balanced but there are generally more male than female employees.
The Auditing department has the highest turnover rate followed by Legal. The least turn over rate is in Marketing department.
- A large number of employees come from the state of Ohio.
- The net change in employees has increased over the years.
- The average tenure for each department is about 8 years with Sales having the highest and HR, Business Development, Support, Training, Product Management and Legal having the lowest.
  
## Limitations
- Some records had negative ages and these were excluded during querying(967 records). Ages used were 18 years and above.
- Some termdates were far into the future and were not included in the analysis(1599 records). The only term dates used were those less than or equal to the current date.
