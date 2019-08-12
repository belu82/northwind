SELECT product_name, company_name from suppliers join products 
on products.supplier_id = suppliers.supplier_id order by product_name,company_name asc;
