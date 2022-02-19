select a.*
from customertable a
join(select customer_id, count(*)
from customertable
GROUP BY customer_id
having count(*)>1) b
on a.customer_id = b.customer_id
ORDER BY customer_id;