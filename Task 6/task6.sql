USE lab;
#a
CREATE TABLE Store (
	Order_No INTEGER PRIMARY KEY AUTO_INCREMENT,
    Code VARCHAR(20) NOT NULL,
    Item VARCHAR(30) NOT NULL,
    Quantity INTEGER UNSIGNED DEFAULT 1,
    Price DECIMAL(10,2) NOT NULL,
    Discount DECIMAL(2,2) DEFAULT 0,
    MRP DECIMAL(10,2) NOT NULL
);


#b
INSERT INTO Store (Code, Item, Quantity, Price, Discount, MRP) 
VALUES ("CHOCO", "CHOCOLATE", 20, 80, 0, 80),("TNR", "TONER", 15, 225, 0, 225);

#c
SELECT * FROM Store;


#d
CREATE VIEW CART AS
SELECT Item, Quantity FROM Store;

#e
INSERT INTO Store (Code, Item, Quantity, Price, Discount, MRP) 
VALUES ("VEG", "VEGETABLES", 50, 375, 0, 375);

SELECT * FROM CART;

#f
DROP VIEW CART;



