SELECT DISTINCT(suppliers.Company_Name) AS Company, COUNT(*) AS NumOfProducts 
FROM suppliers
JOIN products ON Suppliers.supplier_id = products.supplier_id
GROUP BY Suppliers.supplier_id
ORDER By NumOfProducts DESC, Company
; 
