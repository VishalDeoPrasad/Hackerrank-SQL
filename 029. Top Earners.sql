select total_salary, count(*)
from (select months*salary as total_salary from employee) as x
group by total_salary
order by total_salary desc
limit 1