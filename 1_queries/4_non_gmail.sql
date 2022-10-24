select name, email, id, cohort_id
from students
where email != '%@gmail.com' and phone is null