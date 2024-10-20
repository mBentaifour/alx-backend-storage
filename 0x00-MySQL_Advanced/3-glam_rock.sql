-- Old school band
-- script that lists all bands with Glam rock

SELECT band_name,
       IFNULL(YEAR(split), 2022) - YEAR(formed) AS lifespan
FROM metal_bands
WHERE main_style = 'Glam rock'
ORDER BY lifespan DESC;
