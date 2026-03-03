
-- aqui segue a idade dos vencedores mais velhos na categoria de melhor ator, atriz e os coadjuvantes. 
-- O LIKE facilitou, pois todas essas categorias têm o "Act" em comum
 
SELECT name, birth_date, year_edition, category FROM oscars_data WHERE category LIKE '%Act%' 
ORDER BY birth_date ASC LIMIT 10; 


-- e aqui os diretores mais velhos

SELECT name, birth_date, year_edition, category FROM oscars_data WHERE category = 'Best Director'
 ORDER BY birth_date ASC LIMIT 10;

-- e o meu favorito: quem ganhou o prêmio com a menor idade

SELECT name, category, year_edition, 
(CAST(year_edition AS UNSIGNED) - CAST(birth_year AS UNSIGNED)) AS agewin
FROM oscars_data WHERE birth_year IS NOT NULL ORDER BY agewin LIMIT 20;

