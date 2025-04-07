USE MaduraiFoodOrdering;
INSERT INTO Restaurants VALUES
(1, 'Annapoorna Veg', 'Goripalayam', '9999999991', '8 AM - 10 PM'),
(2, 'Kumar Mess', 'Simmakkal', '9999999992', '11 AM - 11 PM'),
(3, 'Madurai Kitchen', 'Tallakulam', '9999999993', '9 AM - 9 PM'),
(4, 'Sri Krishna Bhavan', 'Thirupparankundram', '9999999994', '7 AM - 10 PM'),
(5, 'Hotel Aryaas', 'Mattuthavani', '9999999995', '8 AM - 11 PM');

INSERT INTO MenuItems VALUES
(101, 1, 'Mini Meals', 'Banana leaf meals', 'Lunch', 120.00, 1, 'Veg Meals'),
(102, 2, 'Mutton Chukka', 'Dry fry mutton', 'Non-Veg', 180.00, 1, 'Mutton'),
(103, 3, 'Dosa', 'Plain dosa with chutney', 'Breakfast', 50.00, 1, 'Tiffin'),
(104, 4, 'Sambar Rice', 'Rice with sambar and papad', 'Lunch', 70.00, 1, 'Rice'),
(105, 5, 'Paneer Butter Masala', 'Rich paneer curry', 'Dinner', 150.00, 1, 'Curry');

INSERT INTO Customers VALUES
(1, 'Rajesh K', 'rajesh@gmail.com', '9000000001', '5, Kalavasal Street'),
(2, 'Meena S', 'meena@gmail.com', '9000000002', '23, Anna Nagar'),
(3, 'Naveen R', 'naveen@gmail.com', '9000000003', '99, Kochadai'),
(4, 'Karthika D', 'karthika@gmail.com', '9000000004', '3, Theni Main Road'),
(5, 'Saravanan V', 'saravanan@gmail.com', '9000000005', '108, Madurai South');

INSERT INTO Orders VALUES
(5001, 1, 1, NOW(), 'Pending', 120.00, 'Cash'),
(5002, 2, 2, NOW(), 'Completed', 180.00, 'UPI'),
(5003, 3, 3, NOW(), 'Delivered', 50.00, 'Card'),
(5004, 4, 4, NOW(), 'Pending', 70.00, 'Cash'),
(5005, 5, 5, NOW(), 'Completed', 150.00, 'UPI');


INSERT INTO OrderItems VALUES
(1, 5001, 101, 1, NULL),
(2, 5002, 102, 1, 'Spicy'),
(3, 5003, 103, 2, 'Crispy'),
(4, 5004, 104, 1, 'Less tamarind'),
(5, 5005, 105, 1, 'Extra butter');


INSERT INTO DaySpecial VALUES
(1, 1, 'Sunday', 'Veg Delight', 'Mini Meals', 'Full veg meal with payasam', 120, 99, TRUE),
(2, 2, 'Sunday', 'Meat Lovers Combo', 'Mutton Chukka', 'Includes rice + chukka + egg', 180, 150, FALSE),
(3, 3, 'Monday', 'Dosa Mania', 'Dosa', 'Unlimited dosa offer with chutneys', 50, 40, TRUE),
(4, 4, 'Wednesday', 'Sambar Surprise', 'Sambar Rice', 'Free papad with every order', 70, 60, TRUE),
(5, 5, 'Friday', 'Paneer Power', 'Paneer Butter Masala', 'Comes with 2 chapatis', 150, 120, TRUE);
