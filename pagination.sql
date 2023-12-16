
-- PAGINATION #1 -- Retrieve the first 2 rows on page #1
SELECT * 
FROM products
ORDER BY name ASC
LIMIT 2
OFFSET 0;

-- PAGINATION #2 -- Retrieve the next 2 rows for page #2
SELECT * 
FROM products
ORDER BY name ASC
LIMIT 2
OFFSET 2;

-- Address pagination performance issue by adding where clause
SELECT * 
FROM products
WHERE name > 'Kitkat Matcha'
ORDER BY name ASC
LIMIT 2
OFFSET 0;

