use FoodOrder;
INSERT INTO Restaurants (Name, Location, Contact, OpeningHours)
VALUES
('Burger King', 'Downtown', '1234567890', '10 AM - 10 PM'),
('Pizza Hut', 'Mall Road', '9876543210', '11 AM - 11 PM'),
('Sushi Palace', 'Central Square', '5551112233', '12 PM - 10 PM'),
('Taco Fiesta', 'Westside', '4445556677', '9 AM - 9 PM'),
('Dosa Plaza', 'East End', '7778889999', '8 AM - 11 PM');

INSERT INTO MenuItems (RestaurantID, Name, Description, Price, Category)
VALUES
(1, 'Whopper', 'Flame-grilled beef burger', 5.99, 'Burgers'),
(2, 'Margherita Pizza', 'Classic tomato and cheese', 8.99, 'Pizza'),
(3, 'California Roll', 'Crab, avocado, cucumber', 7.99, 'Sushi'),
(4, 'Beef Taco', 'Seasoned ground beef', 3.49, 'Tacos'),
(5, 'Masala Dosa', 'Crispy rice crepe with potato', 4.99, 'Dosa');

INSERT INTO Customers (Name, Email, Phone, Address)
VALUES
('Alice Smith', 'alice@example.com', '5551234567', '123 Main St'),
('Bob Johnson', 'bob@example.com', '5557654321', '456 Park Ave'),
('Charlie Brown', 'charlie@example.com', '5558889999', '789 Oak Lane'),
('Diana Prince', 'diana@example.com', '5554443333', '321 Elm St'),
('Ethan Hunt', 'ethan@example.com', '5552221111', '654 Pine Rd');

INSERT INTO Orders (CustomerID, RestaurantID, Status, TotalAmount, PaymentMethod)
VALUES
(1, 1, 'Delivered', 5.99, 'Credit Card'),
(2, 2, 'Preparing', 8.99, 'PayPal'),
(3, 3, 'Out for Delivery', 7.99, 'Cash'),
(4, 4, 'Pending', 3.49, 'Credit Card'),
(5, 5, 'Delivered', 4.99, 'Debit Card');

INSERT INTO OrderItems (OrderID, ItemID, Quantity, SpecialRequest)
VALUES
(1, 1, 1, 'No onions'),
(2, 2, 1, 'Extra cheese'),
(3, 3, 1, 'Less spicy'),
(4, 4, 1, 'Add sour cream'),
(5, 5, 1, 'Extra chutney');