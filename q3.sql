select regno
from airplane
where regno not in (
	select servicerecords.regnumber
	from servicerecords)