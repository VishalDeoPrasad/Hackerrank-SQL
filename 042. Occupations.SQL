select
    max(if(OCCUPATION = "Doctor", Name, Null)) as DOCTOR,
    max(if(OCCUPATION = "Professor", Name, Null)) as PROFESSOR,
    max(if(OCCUPATION = "SINGER", Name, Null)) as SINGER,
    max(if(OCCUPATION = "ACTOR", Name, Null)) as ACTOR
    
FROM 
(select name, OCCUPATION, 
    row_number() over(partition by OCCUPATION order by name) as row_num
from OCCUPATIONS) as a 
group by row_num