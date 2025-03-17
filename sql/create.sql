DROP TABLE IF EXISTS ClimateMeasurement;
DROP TABLE IF EXISTS Station;
DROP TABLE IF EXISTS Region;

CREATE TABLE Region (
    region_id SERIAL PRIMARY KEY,
    region_name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

CREATE TABLE Station (
    station_id SERIAL PRIMARY KEY,
    region_id INT NOT NULL,
    station_name VARCHAR(100) NOT NULL,
    latitude DECIMAL(9,6) NOT NULL,
    longitude DECIMAL(9,6) NOT NULL,
    elevation INT,
    FOREIGN KEY (region_id) REFERENCES Region(region_id) ON DELETE CASCADE
);

CREATE TABLE ClimateMeasurement (
    measurement_id SERIAL PRIMARY KEY,
    station_id INT NOT NULL,
    measurement_date DATE NOT NULL,
    avg_temperature DECIMAL(4,1),
    precipitation DECIMAL(4,2),
    FOREIGN KEY (station_id) REFERENCES Station(station_id) ON DELETE CASCADE
);

INSERT INTO Region (region_name, country) VALUES
('Midwest', 'USA'),
('Southeast', 'USA'),
('Northern Territory', 'Australia');

INSERT INTO Station (region_id, station_name, latitude, longitude, elevation) VALUES
(1, 'Chicago O''Hare Intl', 41.974162, -87.907321, 204),
(2, 'Atlanta Hartsfield-Jackson', 33.640411, -84.419853, 313),
(3, 'Darwin Airport', -12.407111, 130.880833, 31);

INSERT INTO ClimateMeasurement (station_id, measurement_date, avg_temperature, precipitation) VALUES
(1, '2024-01-15', -5.3, 0.12),
(2, '2024-01-15', 7.8, 0.00),
(3, '2024-01-15', 28.4, 15.25);
