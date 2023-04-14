select 
    case 
        when a+b<=c or a+c<=b or b+c<=a then "Not A Triangle"
        when A+B>C and A=B and A=C then "Equilateral"
        when A+B>C and A=B or A=C or B=C then "Isosceles"
        when A+B>C and A<>B or A<>C or B<>C then "Scalene"
       
    end as t_type
        
from Triangles