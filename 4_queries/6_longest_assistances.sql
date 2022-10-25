select avg(completed_at - started_at) as average_assistance_time, cohorts.name as name
from assistance_requests
join students on assistance_requests.student_id = students.id
join cohorts on cohort_id = cohorts.id
group by cohorts.name
order by average_assistance_time desc
limit 1