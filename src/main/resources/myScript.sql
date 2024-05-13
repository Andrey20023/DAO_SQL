SELECT product_name
FROM newtest.ORDERS A
         INNER JOIN  newtest.customers B
                     ON A.customer_id = B.id
WHERE B.name = :name;