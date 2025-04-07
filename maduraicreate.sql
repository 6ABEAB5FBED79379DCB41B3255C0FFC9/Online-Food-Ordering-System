USE MaduraiFoodOrdering;
CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Contact VARCHAR(15),
    OpeningHours VARCHAR(50)
);
CREATE TABLE MenuItems (
    itemID INT PRIMARY KEY,
    RestaurantID INT,
    Name VARCHAR(100),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Availability BOOLEAN,
    MenuItemscoll VARCHAR(50),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address TEXT
);
CREATE TABLE Orders (
    OrdersID INT PRIMARY KEY,
    CustomerID INT,
    RestaurantsID INT,
    OrderDate DATETIME,
    Status VARCHAR(20),
    TotalAmount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RestaurantsID) REFERENCES Restaurants(RestaurantID)
);
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY,
    OrderID INT,
    itemID INT,
    Quantity INT,
    SpecialRequest TEXT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrdersID),
    FOREIGN KEY (itemID) REFERENCES MenuItems(itemID)
);
CREATE TABLE DaySpecial (
    SpecialID INT PRIMARY KEY,
    RestaurantID INT,
    DayName VARCHAR(20),
    Title VARCHAR(100),
    SpecialItem VARCHAR(100),
    Description TEXT,
    OriginalPrice DECIMAL(10,2),
    OfferPrice DECIMAL(10,2),
    Vegetarian BOOLEAN,
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

CREATE TABLE CulturalEvents (
EventID INT PRIMARY KEY AUTO_INCREMENT,
EventName VARCHAR(100) NOT NULL,
TamilName VARCHAR(100),
StartDate DATE,
EndDate DATE,
SpecialMenuID INT,
DeliveryNotes TEXT
);

