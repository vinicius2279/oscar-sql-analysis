 -- neste script estão informações sobre religião
 
 -- listagem das religiões que mais aparecem
 
SELECT religion, COUNT(*) AS total FROM oscars_data 
WHERE religion IS NOT NULL AND religion <> ''
GROUP BY religion ORDER BY total DESC;

-- aqui a listagem dos atores, atrizes e diretores que são cristãos (de diversas denominações)
-- removi os valores NULL

 SELECT name, category, year_edition, religion FROM oscars_data 
 WHERE religion IS NOT NULL AND religion NOT IN ('Agnostic', 'Atheist', 'Jewish', '', 'Hindu', 'Deist', 'Sufism');
 
 -- contagem de cristãos (de diversas denominações)
 
SELECT religion, COUNT(*) as total FROM oscars_data
WHERE religion IS NOT NULL AND religion NOT IN ('Agnostic', 'Atheist', 'Jewish', 'Hindu', 'Deist', 'Sufism', '') 
GROUP BY religion; 
 
 -- lista de ateus e agnósticos presentes nas premiações
 
 SELECT name, category, year_edition FROM oscars_data
 WHERE (religion = 'Agnostic' OR religion = 'Atheist');
 
 -- contagem de ateus e agnósticos
 
 SELECT religion, COUNT(*) AS total FROM oscars_data
 WHERE (religion = 'Agnostic' OR religion = 'Atheist')
 GROUP BY religion ORDER BY total DESC;
 
 -- lista de pessoas que seguem o judaísmo
 
 SELECT name, category, year_edition FROM oscars_data 
 WHERE (religion = 'Jewish');
 
 -- contagem de pessoas que seguem o judaísmo 
 
 SELECT religion, COUNT(*) AS total FROM oscars_data WHERE religion = 'Jewish'
 GROUP BY religion;