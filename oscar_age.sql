-- aqui seguem queries relacionadas a idade
 
 
-- vencedores com a menor data de nascimento
 
SELECT name, birth_date, year_edition, category FROM oscars_data WHERE category LIKE '%Act%'
AND birth_date IS NOT NULL 
ORDER BY birth_date ASC LIMIT 10; 

-- diretores mais velhos a ganhar a premiação

SELECT name, birth_date, year_edition, category FROM oscars_data WHERE category = 'Best Director'
AND birth_date IS NOT NULL
 ORDER BY birth_date ASC LIMIT 10;
 
 -- diretores mais novos a ganhar a premiação
 
 SELECT name, birth_year, year_edition, category FROM oscars_data WHERE category = 'Best Director'
AND birth_date IS NOT NULL
 ORDER BY birth_date DESC LIMIT 10;
 
-- quem ganhou qualquer um dos prêmios com a menor idade

SELECT name, category, year_edition, 
(CAST(year_edition AS UNSIGNED) - CAST(birth_year AS UNSIGNED)) AS agewin
FROM oscars_data WHERE birth_year IS NOT NULL ORDER BY agewin LIMIT 20;

-- quem ganhou qualquer um dos prêmios com a maior idade

SELECT name, category, year_edition, 
(CAST(year_edition AS UNSIGNED) - CAST(birth_year AS UNSIGNED)) AS agewin
FROM oscars_data WHERE birth_year IS NOT NULL ORDER BY agewin DESC LIMIT 20;

-- aqui a média de idade dos vencedores quando venceram as edições

SELECT ROUND(AVG(year_edition - birth_year), 0) AS avg_age
FROM oscars_data
WHERE birth_year IS NOT NULL;