DROP TABLE IF EXISTS NewsletterDistribution;
DROP TABLE IF EXISTS OrderItem;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS NewsletterIssue;
DROP TABLE IF EXISTS NewsletterSubscriber;
DROP TABLE IF EXISTS Customer;

CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL
);

CREATE TABLE Locations (
    location_id SERIAL PRIMARY KEY,
    project_id INT NOT NULL,
    region VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    FOREIGN KEY (project_id) REFERENCES Projects(project_id) ON DELETE CASCADE
);

CREATE TABLE ClimateData (
    data_id SERIAL PRIMARY KEY,
    location_id INT NOT NULL,
    temperature DECIMAL(5,2) NOT NULL,
    humidity DECIMAL(5,2) NOT NULL,
    recorded_at TIMESTAMP NOT NULL,
    FOREIGN KEY (location_id) REFERENCES Locations(location_id) ON DELETE CASCADE
);

INSERT INTO Projects (project_name, start_date) VALUES
('Arctic Ice Monitoring', '2024-01-15'),
('Rainforest Conservation', '2023-06-10'),
('Urban Air Quality Study', '2022-09-25');

INSERT INTO Locations (project_id, region, country) VALUES
(1, 'Arctic Circle', 'Norway'),
(2, 'Amazon Basin', 'Brazil'),
(3, 'New York City', 'USA');

INSERT INTO ClimateData (location_id, temperature, humidity, recorded_at) VALUES
(1, -15.30, 80.50, '2024-02-10 08:00:00'),
(2, 29.40, 92.30, '2024-02-10 12:00:00'),
(3, 15.60, 60.20, '2024-02-10 18:00:00');
