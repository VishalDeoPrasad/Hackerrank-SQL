select sum(c.population) from city as c left join country as cy on c.countrycode=cy.code
where cy.continent = "Asia"