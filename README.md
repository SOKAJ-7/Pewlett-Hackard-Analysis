# Pewlett-Hackard-Analysis

## Overview
This analysis was conducted to gather key information on the workforce of a specified company, Pewlett-Hackard. The first part of this analysis is to determine which employees are eligible for retirement, or have already retired as well as other information regarding their name, birth date, and employee information. Another table was generated from this table to only include employees who have not yet retired. A third table was created to group the counts of employees nearing retirement based on their current title.

The second part of this analysis involved creating a table to show which employees are elible to be mentors in the company based on birth date and employment status at Pewlett-Hackard. This was achieved by querying PostgreSQL databases populated by company data using pgadmin 4.

## Results
Based on the tables created, there are a few takeways to help prepare for the 'Sliver Wave' :

- It would be wise for Pewlett-Hackard to focus on hiring more senior staff and senior engineers. The number of employees with these titles approaching retirement are 29,415 and 28,254, respectively. Pewlett-Hackard should try to lure people into these positions from other companies or by promoting current non-senior staff to higher positions. Additionally, Pewlett-Hackard could use the mentorship availability table created in this analysis to identify employees ready to be mentored for more senior roles. 

- Of the employees in the mentorship_availability table, the titles with highest representation are senior staff and engineers. Senior engineers and general staff are also well represented while there is a relatively small amount of technique leaders and assistant engineers eligible for the mentorship program (Figure 1). 

- There is not an urgent need to hire managers as there are only 2 employees with this title approaching retirement.

- 

![mentorship_titles](https://user-images.githubusercontent.com/93050931/146657723-274d11aa-817b-42d5-a003-9ba63371ce00.PNG)

(Figure 1)


## Summary
As the 'Silver Wave' hits, Pewlett-Hackard will need to replace 90,398 employees due to retirement. As noted in the 'Results' section above. The most affected areas of the company will be the senior engineers and senior staff. Based on the mentorship eligibility table we've created, there is a good representation of engineers and staff amongst employees eligible for mentorship. This represents a pool of experienced and qualified individuals to fill these soon-to-be vacant senior roles. However, in comparison to the vast number of employees retiring, these numbers are still small. There are only hundreds of engineers and staff eligible for mentorship while there are tens of thousands of senior employees leaving. Pewlett-Hackard will most definitely need to look at hiring from outside the company to maintain their current levels of production and efficiency. In order to visualize the figures referenced above, a new query on the mentorship eligibility table had to be created which found the counts of employees based on title. This can be seen in Figure 1 of the 'Results' section.

Another factor involved with the impending 'Silver Wave' is the cost of the pensions to be paid to the retiring employees. To help calculate these costs, it would be helpful to make a query that calculates the total duration of employment for each individual at Pewlett-Hackard. This way, employees in charge of the companies finances can appropriately prepare for the 'Silver Wave'. 
