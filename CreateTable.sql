USE FoodOrder;

CREATE TABLE Restaurants (
RestaurantID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(100) NOT NULL,
Location VARCHAR(100),
Contact VARCHAR(15),
OpeningHours VARCHAR(50)
);
-- Menu Items Table
CREATE TABLE MenuItems (
ItemID INT PRIMARY KEY AUTO_INCREMENT,
RestaurantID INT,
Name VARCHAR(100) NOT NULL,
Description TEXT,
Price DECIMAL(10,2) NOT NULL,
Category VARCHAR(50),
Availability BOOLEAN DEFAULT TRUE,
FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

CREATE TABLE Customers (
CustomerID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50) NOT NULL,
Email VARCHAR(100) UNIQUE,
Phone VARCHAR(15),
Address TEXT
);

CREATE TABLE Orders (
OrderID INT PRIMARY KEY AUTO_INCREMENT,
CustomerID INT,
RestaurantID INT,
OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
Status ENUM('Pending', 'Preparing', 'Out for Delivery', 'Delivered', 'Cancelled'),
TotalAmount DECIMAL(10,2),
PaymentMethod VARCHAR(20),
FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

CREATE TABLE OrderItems (
OrderItemID INT PRIMARY KEY AUTO_INCREMENT,
OrderID INT,
ItemID INT,
Quantity INT DEFAULT 1,
SpecialRequest TEXT,
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
FOREIGN KEY (ItemID) REFERENCES MenuItems(ItemID)
);