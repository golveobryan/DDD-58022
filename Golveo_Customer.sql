CREATE DATABASE Customer;
CREATE TABLE tblcustomer 
(CustomerID INT NOT NULL, 
CustomerName CHAR(40) NOT NULL, 
Municipality CHAR(40) NOT NULL, 
City CHAR(24) NOT NULL, 
SalaryinPESO FLOAT NOT NULL, 
PRIMARY KEY(CustomerID));


INSERT INTO tblcustomer (CustomerID, CustomerName, Municipality, City, SalaryinPeso)
VALUES (1, 'Gina De Leon', 'Apalit', 'Pampanga', '5000'),
(2, 'Amara Luna', 'Mexico', 'Pampanga', '6000'), 
(3, 'Lucila Maulon', 'Angat', 'Bulacan','1000'),
(4, 'Rafael Santos', 'Lumban', 'Laguna','4500'),
(5,  'Maricel Moreno', 'Calumpit', 'Bulacan','12000'),
(6, 'Antonio Moreno', 'Santa Maria', 'Bulacan','8500'),
(7, 'Hanna Moos', 'Alaminos', 'Laguna','6000'),
(8, 'Fred Gregorio', 'Lumban', 'Laguna','5000'),
(9, 'Maria Andres', 'Porac', 'Pampanga','1800'),
(10, 'Liza Ramos', 'Alaminos', 'Laguna','14000');

SELECT*FROM tblcustomer;

-- CUSTOMER WITH LOWEST SALARY
SELECT MIN(SalaryinPeso)
FROM tblcustomer
WHERE CITY = 'Laguna';

-- CUSTOMER WITH HIGHEST SALARY
SELECT MAX(SalaryinPeso)
FROM tblcustomer
WHERE CITY = 'Pampanga';

SELECT MAX(SalaryinPeso)
FROM tblcustomer
WHERE CITY = 'Bulacan';

-- select all records from pampanga city
SELECT *FROM tblcustomer WHERE City = 'Pampanga';

-- select only municipality of Porac And Pampanga
 SELECT *FROM tblcustomer WHERE Municipality = 'Porac' AND City = 'Pampanga';

-- Select either Apalit or Angat
SELECT *FROM tblcustomer WHERE Municipality = 'Apalit' OR Municipality = 'Angat';

-- select all cities that are not Pampanga
 SELECT *FROM tblcustomer WHERE NOT City = 'Pampanga';
 
 -- select descending and ascending
 SELECT * FROM tblcustomer
 ORDER BY City DESC, CustomerName DESC ;
    