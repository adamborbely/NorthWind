WITH max_Price AS (
        SELECT Supplier_id,  
		Max(products.Unit_price) AS Unit_Price
		FROM products
		GROUP By Supplier_id),
	pCN AS(
		SELECT  suppliers.company_name AS CN, 
		max_price.Unit_Price AS UP,
		suppliers.supplier_id AS SID
		FROM suppliers, max_price
		WHERE suppliers.supplier_id = max_price.supplier_id )
SELECT  pCN.CN, products.product_name, pCN.UP FROM pCN, products
WHERE pcN.SID = products.supplier_id AND pCN.UP = products.unit_price
ORDER BY pCN.UP DESC
;
WITH max_price AS
 (SELECT supplier_id,
         MAX(products.unit_price) AS max_unit_price
    FROM products
   GROUP BY supplier_id)
SELECT suppliers.company_name,
       products.product_name,
       products.unit_price
  FROM suppliers
     , products
     , max_price
 WHERE suppliers.supplier_id = products.supplier_id
   AND products.supplier_id = max_price.supplier_id
   AND products.unit_price = max_price.max_unit_price;