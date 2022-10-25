select cohorts.name as cohort_name, count(students.*) as student_count
from cohorts join students on student_id = students.id
group by cohort_name
having count(students.*) >= 18
order by student_count