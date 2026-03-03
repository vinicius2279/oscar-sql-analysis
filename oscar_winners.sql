
-- > dados do Oscar do ano de 1927 a 1990, pulando algumas edições, por limitações do banco de dados aberto 
-- Para consultar os anos registrados, basta fazer um SELECT DISTINCT year_edition FROM oscars_data ORDER BY year_edition DESC;
 

USE oscars_analysis;

-- aqui podemos ver os 10 maiores ganhadores de categoria por categoria

SELECT name, category, COUNT(*) AS hwins FROM oscars_data WHERE category = 'Best Actor' 
GROUP BY name ORDER BY hwins DESC LIMIT 10;

SELECT name, category, COUNT(*) AS mwins FROM oscars_data WHERE category = 'Best Actress' 
GROUP BY name ORDER BY mwins DESC LIMIT 10;

SELECT name, category, COUNT(*) AS supwins FROM oscars_data WHERE category = 'Best Supporting Actor' 
GROUP BY name ORDER BY supwins DESC LIMIT 10;

SELECT name, category, COUNT(*) AS supmwins FROM oscars_data WHERE category = 'Best Supporting Actress'
GROUP BY name ORDER BY supmwins DESC LIMIT 10;

SELECT name, category, COUNT(*) AS dirwins FROM oscars_data WHERE category = 'Best Director'
GROUP BY name ORDER BY dirwins DESC LIMIT 10;

-- por aqui podemos ver tudo no mesmo resultado

SELECT category, name, COUNT(*) AS wins FROM oscars_data
WHERE category IN (
    'Best Actor',
    'Best Actress',
    'Best Supporting Actor',
    'Best Supporting Actress',
    'Best Director'
)
GROUP BY category, name
ORDER BY wins DESC
LIMIT 50;



