'Creating Table'

CREATE TABLE Product_Information(UPid int NOT NULL PRIMARY KEY, Description
varchar(50), Category varchar(10), Perishability_status varchar(20));
CREATE TABLE Stock_Of_Product(UPid int NOT NULL PRIMARY KEY,
Date_Purchase date, Date_Expiry date, Quantity int, Rate float (10,2), FOREIGN KEY
(UPid) REFERENCES Product_Information(UPid));
'Value Insertion'
INSERT INTO Product_Information
VALUES(1,'Butter','Food','Perishable');
INSERT INTO Product_Information
VALUES(2,'Cream','Cosmetics','Non Perishable');
INSERT INTO Product_Information
VALUES(3,'Olive Oil','Food','Non Perishable');
INSERT INTO Product_Information
VALUES(4,'Bread','Food','Perishable');
INSERT INTO Product_Information
VALUES(5,'facewash','Cosmetics','Non Perishable');
INSERT INTO Product_Information
VALUES(6,'scrub','Cosmetics','Non Perishable');
INSERT INTO Product_Information
VALUES(7,'Lights','Electronic','Non Perishable');
INSERT INTO Product_Information
VALUES(8,'Clothes','Household','Non Perishable');
INSERT INTO Product_Information
VALUES(9,'bottles','Household','Non Perishable');
Select * From Product_Information;
'Values'
INSERT INTO Stock_Of_Product
VALUES(1,'2021/07/05','2021/07/11',20 ,50);
INSERT INTO Stock_Of_Product
VALUES(2,'2021/04/02','2021/08/01',11 ,40);
INSERT INTO Stock_Of_Product
VALUES(3,'2021/02/02','2021/06/8',2 ,87);
INSERT INTO Stock_Of_Product
VALUES(4,'2021/07/11','2021/07/11',15 ,43);
INSERT INTO Stock_Of_Product
VALUES(5,'2021/07/05','2021/09/13',9 ,59);
INSERT INTO Stock_Of_Product
VALUES(6,'2021/04/19','2021/07/21',20 ,99);
INSERT INTO Stock_Of_Product
VALUES(7,'2021/07/05','2021/09/11',4 ,500);
INSERT INTO Stock_Of_Product
VALUES(8,'2021/03/05','2021/07/11',8 ,1000);
INSERT INTO Stock_Of_Product
VALUES(9,'2021/01/06','2021/09/19',10 ,20);
SELECT * FROM Product_Information;
SELECT * FROM Stock_Of_Product;

'Query'

SELECT s.UPid, s.Description, s.Category, s.Perishability_status, t.Date_Purchase,
t.Date_Expiry
FROM Product_Information s INNER JOIN Stock_Of_Product t ON s.UPid=t.UPid;
'Query'
SELECT a.UPid, a.Description, a.Category, a.Perishability_status, b.Date_Purchase,
b.Date_Expiry
FROM Product_Information a INNER JOIN Stock_Of_Product b ON a.UPid=b.UPid;