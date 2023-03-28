select CName, Address
from coorporations
where Cname in (
	select ownerr.cid
	from ownerr
	where cid is not null and oid in (
		select airplane.own
		from airplane
		where typee in (
			select airplane_type.modelno
			from airplane_type
			where capacity > 200
		)
	)	
);