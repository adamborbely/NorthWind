WITH max_Price AS (
        SELECT Supplier_id, 
		Max(products.Unit_price) AS Unit_Price
		FROM products
		GROUP By Supplier_id)		
SELECT  suppliers.company_name, max_price.Unit_Price,max_price.supplier_id  FROM suppliers, max_price
WHERE suppliers.supplier_id = max_price.supplier_id 
ORDER BY max_price.Unit_Price DESC
;	 

WITH max_Price AS (
        SELECT Supplier_id, 
		Max(products.Unit_price) AS Unit_Price
		FROM products
		GROUP By Supplier_id)		
SELECT  products.product_name, max_price.Unit_Price,max_price.supplier_id  FROM products, max_price
WHERE products.supplier_id = max_price.supplier_id  AND  products.unit_price = max_price.Unit_Price
ORDER BY max_price.Unit_Price DESC
