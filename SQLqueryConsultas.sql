------------------DIM CUSTOMER--------CLIENTE-------------------
SELECT Address,
       City,
       Country,
       Phone
  FROM Customer;

--------------DIM EMPLOYEE---------EMPLEADO----------------------
SELECT LastName AS emp_LastName,
       FirstName AS emp_FirstName,
       Title AS emp_Title,
       Address AS emp_Address,
       City AS emp_City,
       Country AS emp_Country
  FROM Employee;

SELECT * FROM Employee;

---------------DIM PRODUCTO--------PRODUCTO----------------------
SELECT Product.ProductName,
       Category.CategoryName
  FROM Product
       INNER JOIN
       Category ON Category.Id = Product.CategoryId;


SELECT * FROM Product;

------------------DIM SUPPLIER--PROVEDOR-----------------------------
SELECT CompanyName AS sup_CompanyName,
       Address AS sup_Address,
       City AS sup_City,
       Country AS sup_Country
  FROM Supplier;


------------------DIM TIME -------TIEMPO------INIICO 2006/02/19--FIN 2012/07/30---------------

-----------------fac_sales_order---------------------------------

SELECT C.Id AS Id_custumer,
       E.Id AS Id_employee,
       D.Id AS Id_time,
       S.Id AS Id_supplier,
       P.Id AS Id_produc,
       O.Quantity,
       O.UnitPrice,
       (O.Quantity * O.UnitPrice) AS Total
  FROM Orders D
       INNER JOIN
       OrderDetail O ON O.OrderId = D.Id
       INNER JOIN
       Customer C ON C.Id = D.CustomerId
       INNER JOIN
       Employee E ON E.Id = D.EmployeeId
       INNER JOIN
       Product P ON P.Id = O.ProductId
       INNER JOIN
       Supplier S ON S.Id = P.SupplierId;

SELECT * FROM OrderDetail;


