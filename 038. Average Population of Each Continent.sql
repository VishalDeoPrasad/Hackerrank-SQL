select c.continent, floor(avg(cty.population)) from city as cty inner join country as c on cty.countrycode=c.code

group by c.continent