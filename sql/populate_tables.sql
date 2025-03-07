INSERT INTO Customer (FirstName, LastName, Email, Phone, Address, DateJoined)
VALUES 
('Alice', 'Smith', 'alice@example.com', '555-1234', '123 Maple St', '2025-02-20'),
('Bob', 'Johnson', 'bob@example.com', '555-5678', '456 Oak Ave', '2025-02-21');

INSERT INTO Category (Name, Description)
VALUES 
('Electronics', 'Electronic devices and accessories'),
('Books', 'Various books and publications');

INSERT INTO Product (Name, Description, Price, CategoryID)
VALUES 
('Solar Panel', 'High efficiency solar panel', 250.00, 1),
('Eco-friendly Notebook', 'Recycled paper notebook', 5.99, 2);

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount, OrderStatus)
VALUES 
(1, '2025-02-22', 255.99, 'Completed'),
(2, '2025-02-23', 5.99, 'Pending');

INSERT INTO OrderItem (OrderID, ProductID, Quantity, UnitPrice)
VALUES 
(1, 1, 1, 250.00),
(1, 2, 1, 5.99),
(2, 2, 1, 5.99);

INSERT INTO NewsletterSubscriber (Email, FirstName, LastName, SubscriptionDate, Preferences)
VALUES 
('subscriber1@example.com', 'Carol', 'Williams', '2025-02-20', 'Weekly updates'),
('subscriber2@example.com', 'Dave', 'Brown', '2025-02-21', 'Monthly summary');

INSERT INTO NewsletterIssue (Subject, Content, SendDate, Author)
VALUES 
('Climate Action Newsletter - February', 'Content of the February newsletter...', '2025-02-22', 'Editor Team'),
('Sustainability Updates', 'Latest sustainability updates...', '2025-02-23', 'Editor Team');

INSERT INTO NewsletterDistribution (NewsletterID, SubscriberID, DeliveredDate, DeliveryStatus, OpenedDate)
VALUES 
(1, 1, '2025-02-22', 'Sent', '2025-02-23'),
(1, 2, '2025-02-22', 'Sent', '2025-02-23'),
(2, 1, '2025-02-23', 'Sent', '2025-02-24'),
(2, 2, '2025-02-23', 'Sent', '2025-02-24');
