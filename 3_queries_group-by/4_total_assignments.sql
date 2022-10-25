select cohorts.name as cohort_name, sum(assignment_submissions.*) as total_submissions
from assignment_submissions
join students on student_id = students.id
join cohorts on cohort_id = cohorts.id
group by cohorts.name
order by total_submissions desc