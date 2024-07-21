-- update industry column wherever there is crypto or any word containing crypto to Crypto

UPDATE final_table
SET industry='Crypto'
WHERE industry LIKE 'Crypto%'