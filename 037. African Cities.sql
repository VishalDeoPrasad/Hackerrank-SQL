select cty.name from city as cty left join country as c on cty.countrycode=c.code
where c.continent='Africa'