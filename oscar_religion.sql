 -- aqui segue a listagem das religiões que mais aparecem
 
SELECT religion, COUNT(*) AS mrel FROM oscars_data WHERE religion IS NOT NULL 
GROUP BY religion ORDER BY mrel DESC;

-- aqui a listagem dos atores, atrizes e diretores que são cristãos, e abaixo a lista de cada uma das religiões que aparecem
-- lembrando que essas são as únicas opções não cristãs que davam na época, mesmo existindo várias religiões.
-- alguns são NULL

 SELECT name, category, year_edition, religion FROM oscars_data 
 WHERE religion NOT IN ('Agnostic', 'Atheist', 'Jewish');
SELECT religion, COUNT(*) as cri FROM oscars_data
WHERE religion NOT IN ('Agnostic', 'Atheist', 'Jewish') GROUP BY religion; 
 
 -- aqui a lista de ateus e agnósticos presentes nas premmiações e a contagem de vezes que aparecem nas premiações
 
 SELECT name, category, year_edition FROM oscars_data
 WHERE (religion = 'Agnostic' OR religion = 'Atheist');
 SELECT religion, COUNT(*) FROM oscars_data WHERE (religion = 'Agnostic' OR religion = 'Atheist');
 
 -- e por fim a lista de pessoas que seguem o judaísmo que mais aparecem, e a quantidade de vezes que aparecem
 
 SELECT name, category, year_edition FROM oscars_data 
 WHERE (religion = 'Jewish');
 SELECT religion, COUNT(*) FROM oscars_data WHERE religion = 'Jewish';