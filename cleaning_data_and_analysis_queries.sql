select *
from [dbo].[automobile_data]
where num_of_doors is null;



update [dbo].[automobile_data]
set num_of_doors = 'four'
where make = 'dodge' and fuel_type = 'gas' and body_style = 'sedan';

update [dbo].[automobile_data]
set num_of_doors = 'four'
where make = 'mazda' and fuel_type = 'diesel' and body_style = 'sedan';

select distinct num_of_cylinders
from [dbo].[automobile_data]

update [dbo].[automobile_data]
set num_of_cylinders = 'two'
where num_of_cylinders = 'tow';

select 
	min(compression_ratio) as min_compres_ratio,
	max(compression_ratio) as max_compres_ratio
from
	[dbo].[automobile_data];

select 
	min(compression_ratio) as min_compres_ratio,
	max(compression_ratio) as max_compres_ratio
from
	[dbo].[automobile_data]
where 
	compression_ratio <> 70;

select count(*) as num_of_rows_to_delete
from [dbo].[automobile_data]
where compression_ratio = 70;

delete [dbo].[automobile_data]
where compression_ratio = 70;

select distinct drive_wheels
from[dbo].[automobile_data];

select 
	distinct drive_wheels,
	len(drive_wheels) as string_length
from [dbo].[automobile_data];

select 
	max(price) as max_price,
	min(price) as min_price

from [dbo].[automobile_data];