select students.name as student_name, avg(assignment_submissions.duration) as average_assignment_duration
from assignment_submissions
join students on student_id = students.id
where students.end_date is null
group by students.name
order by average_assignment_duration desc