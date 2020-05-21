SELECT products.Product_Name, Suppliers.Company_Name FROM products
JOIN Suppliers ON Suppliers.supplier_id = products.supplier_id
ORDER BY products.Product_Name, Suppliers.Company_Name
;