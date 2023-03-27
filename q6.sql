select name as 'Emp. with highest total number of maintenance hours'
from person
where ssn in (
	select emp.eid
	from emp
	where eid in (
		select top 6 servicerecords.eid
		from servicerecords
		order by hoursworked desc
		)
);