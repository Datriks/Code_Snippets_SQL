select distinct customer_id,name,address
from [dbo].[Customer_Table]
where trim(state) = 'OH';