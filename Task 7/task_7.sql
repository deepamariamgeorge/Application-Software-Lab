USE lab;
#a
CREATE TABLE Store (
	Order_No INTEGER PRIMARY KEY AUTO_INCREMENT,
    Code VARCHAR(20) NOT NULL,
    Item VARCHAR(30) NOT NULL,
    Quantity INTEGER UNSIGNED DEFAULT 1,
    Price DECIMAL(10,2) NOT NULL,
    Discount INT DEFAULT 0,
    MRP FLOAT NOT NULL
);


#b
INSERT INTO Store (Code, Item, Quantity, Price, Discount, MRP) 
VALUES ("P231", "CHOCOLATE", 20, 198, 0, 198),("P500", "TONER", 15, 225, 0, 225), ("P981","MOISTURIZER",25,709,0,709);

#c
SELECT * FROM Store;

#d
SELECT MOD(Price,9) FROM Store;

#e
SELECT Price,POWER(Price,2) FROM Store;

#f
SELECT ROUND(MRP DIV 7) FROM Store;