
use classicmodels;

select 
 e.firstname
,e.lastname 
,c.customerName
,avg(p.amount) average_payment
from employees e
inner join
customers c 
on e.employeeNumber = c.salesRepEmployeeNumber
inner join
payments p
on p.customerNumber = c.customerNumber
group by e.firstName, e.lastName, c.customerName
order by  4 desc;
