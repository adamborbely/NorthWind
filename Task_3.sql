SELECT DISTINCT(suppliers.Company_Name) AS Company
FROM suppliers
JOIN products ON Suppliers.supplier_id = products.supplier_id
GROUP BY Suppliers.supplier_id
HAVING Count(*) = 5
ORDER By Company
; 
