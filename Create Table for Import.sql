CREATE TABLE product_category ( 
  CategoryID INT PRIMARY KEY,
  CategoryName text NOT NULL,
  CategoryAbbreviation text NOT NULL
);

CREATE TABLE products (
  ProdNumber VARCHAR(15) PRIMARY KEY,
  ProdName VARCHAR(255) NOT NULL,
  CategoryID INT NOT NULL,
  Price DECIMAL(10,2) NOT NULL,

   CONSTRAINT fk_category
    FOREIGN KEY (CategoryID)
    REFERENCES product_category(CategoryID)
);

CREATE TABLE customers (
  CustomerID INT PRIMARY KEY,
  FirstName text NOT NULL, 
  LastName text NOT NULL, 
  CustomerEmail VARCHAR(255) NOT NULL,
  CustomerPhone VARCHAR(30) NOT NULL,
  CustomerAddress VARCHAR(266) NOT NULL,
  CustomerCity text NOT NULL,
  CustomerState text NOT NULL,
  CustomerZip VARCHAR(20) NOT NULL
);

CREATE TABLE orders (
 OrderID INT PRIMARY KEY,
 OrderDate DATE NOT NULL,
 CustomerID INT NOT NULL,
 ProdNumber VARCHAR(20) NOT NULL,
 Quantity INT NOT NULL,

  CONSTRAINT fk_customer
    FOREIGN KEY (CustomerID)
    REFERENCES customers(CustomerID),

  CONSTRAINT fk_product
    FOREIGN KEY (ProdNumber)
    REFERENCES products(ProdNumber)

);
