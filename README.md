# Mod 7 Assignment 
# Overview of the analysis:

The world and the United States, in particular, is undergoing a sizablesizeable demographic shift as the baby boomers retire.   The baby boomers are individuals born between 1946 and 1964 and comprise approximately 21% of the population.   While they are no longer the most prominent (https://www.pewresearch.org/fact-tank/2020/04/28/millennials-overtake-baby-boomers-as-americas-largest-generation/), they are still a significant percentage of the population in that 1 in 4 of Unites States workers is a baby boomer (https://www.j2t-recruiting.com/post/the-impact-of-baby-boomers-retiring#:~:text=After%20more%20Boomers%20retire%2C%20several,for%20jobs%2C%20specifically%20young%20talent.)  The pace of retirement in this demographic has markedly increased since COVID-19 (https://www.pewresearch.org/fact-tank/2020/11/09/the-pace-of-boomer-retirements-has-accelerated-in-the-past-year/) leading to what is being called  “The Great Retirement.”  
To better understand the rate of possible retirement, the company, Pewlett Hackard, wants to investigate the number of individuals who meet the criteria for retirement and those who might qualify for a tiered retirement program that emphasizes mentorship for the next generation of employees.

# Results:

A data table, retirement_titles,  was generated containing the eligible employees to retire in the coming year.    There are 72,458 records in this data table.  This table contains the following columns: 
emp_no: unique identifier for each employee
first_name: First name of the employee
last_name: Last name of the employee
title: Current work position of the employee
from_date: When the employee started the current job
to_date: Indicator variable showing that the employee is currently employed

From this table, two additional tables were generated, unique_titles and retiring_titles. The retiring_titles table contains the count of employees who are about to retire and their position titles. 
A data table, mentorship_eligibilty, was created for those employees who meet the requirements for the proposed mentorship program.  These requirements were that the employee was born in 1965 and is currently employed.   The columns in the table are identical to those in the retirement_titles with the addition of birth_date, which is the employee’s birth date.  There are 1,549 records in the mentorship_eligibility table.

# Summary:

Pewlett Hackard is facing a severe problem in that 30% of its staff is eligible to retire.  There will have to be a concerted effort in hiring to maintain the staffing requirements to run the company.  In addition, they are looking at a problem commonly referred to as ‘brain drain.’ Of the eligible individuals to retire, 75% hold senior and leadership positions.  The company must ensure that the current staff are positioned to fill the upcoming gaps. 

<table>
    <thead>
        <tr>
            <th colspan="3">The number of Retirement Eligible Employees grouped by title.</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Title</td>
            <td>Count</td>
            <td>Percent</td>
        </tr>
        <tr>
        		<td>"Senior Engineer"</td>
			<td>25916            </td>
			<td>36%              </td>
		</tr>			
			<td>"Senior Staff"   </td>
			<td>24926            </td>
			<td>34%              </td>
		</tr>
		<tr>
		      <td>"Engineer"       </td>
			<td>9285             </td>
			<td>13%              </td>
		</tr>
		<tr>
			<td>"Staff"          </td>
			<td>7636             </td>
			<td>11%              </td>
		</tr>          
		<tr>
			<td>"Technique Leader"   </td>
			<td>3603                 </td>
			<td>5%                   </td>
		</tr>
		<tr>
			<td>"Assistant Engineer" </td>
			<td>1090                 </td>
			<td>2%                   </td>
		<tr>
			<td>"Manager"            </td>
			<td>2                    </td>
			<td>0%                   </td>
		</tr>   
    </tbody>
</table>


The mentorship program will help train the current staff. However, the number of senior engineers eligible for the mentorship program is limited (197).  

<table>
    <thead>
        <tr>
            <th colspan="2">Number of Eligible Employees for Mentorship program grouped by title.</th>
        </tr>
    </thead>
    <tbody>
    	<tr>
		<td>Count        </td>    
		<td>Title        </td>    
      </tr>
      <tr> 
		<td>518               </td>  
		<td>"Senior Staff"    </td>  
      </tr>
	<tr>
		<td>479          </td>  
		<td>"Engineer"   </td>  
        </tr>
	<tr>
		<td>206       </td>  
		<td>"Staff"   </td>  
        </tr>
	<tr>
		<td>197                   </td>  
		<td>"Senior Engineer"     </td>  
        </tr>
	<tr>
		<td>77                       </td>  
		<td>"Technique Leader"       </td>  
        </tr>
	<tr>
		<td>72 	</td>  
		<td>"Assistant Engineer"  </td>  
        </tr>    
    </tbody>  
</table>      
              
The eligibility may need to be broadened to include more senior engineers.   Extending the age limit to those born between 1965-1967 adds over 300 individuals to the pool of possible mentors.
The next few years at Pewlett Hackard will be challenging. However, with planning and flexibility, the company should be positioned to come thoroughly strong.

