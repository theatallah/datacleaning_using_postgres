UPDATE final_table AS t1
SET industry = t2.industry
FROM final_table AS t2
WHERE t1.industry = '' AND t2.industry IS NOT NULL;



	