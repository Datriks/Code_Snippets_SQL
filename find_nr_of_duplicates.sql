select customer_id, count(*)
from customertable
GROUP BY customer_id
HAVING COUNT(*) > 1;