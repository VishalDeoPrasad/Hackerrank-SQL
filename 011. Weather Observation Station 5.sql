(select city, length(city) from station
order by length(city), city
limit 1) union

(select city, length(city) from station
order by length(city) desc, city desc
limit 1)