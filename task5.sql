SELECT suppliers.company_name, products.product_name, products.unit_price FROM products JOIN suppliers ON
suppliers.supplier_id = products.supplier_id JOIN (SELECT products.supplier_id, MAX(products.unit_price) as unit_price FROM products GROUP BY
products.supplier_id) AS valami ON suppliers.supplier_id = valami.supplier_id 
and products.unit_price = valami.unit_price ORDER BY unit_price DESC;
