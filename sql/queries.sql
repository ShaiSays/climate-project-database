SELECT c.CustomerID, c.FirstName, c.LastName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customer c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID;

SELECT o.OrderID, c.FirstName, c.LastName, p.Name AS ProductName, oi.Quantity, oi.UnitPrice, oi.LineTotal
FROM Orders o
JOIN Customer c ON o.CustomerID = c.CustomerID
JOIN OrderItem oi ON o.OrderID = oi.OrderID
JOIN Product p ON oi.ProductID = p.ProductID
WHERE o.OrderID = 1;

SELECT OrderDate, SUM(TotalAmount) AS DailySales
FROM Orders
GROUP BY OrderDate
ORDER BY OrderDate;

SELECT ni.NewsletterID, ni.Subject, ns.Email, nd.DeliveryStatus, nd.OpenedDate
FROM NewsletterIssue ni
JOIN NewsletterDistribution nd ON ni.NewsletterID = nd.NewsletterID
JOIN NewsletterSubscriber ns ON nd.SubscriberID = ns.SubscriberID;

SELECT p.ProductID, p.Name AS ProductName, c.Name AS CategoryName
FROM Product p
LEFT JOIN Category c ON p.CategoryID = c.CategoryID;

SELECT *
FROM NewsletterIssue
ORDER BY SendDate DESC
LIMIT 1;
