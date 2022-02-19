select students.student_name, scores.student_score
from students join scores 
on students.student_id=scores.student_id

select A.student_name,B.student_score
from students as A join scores as B
on A.student_id=B.student_id;

select A.student_name,B.student_score
from students as A left join scores as B
on A.student_id=B.student_id;