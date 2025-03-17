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
    temperature DECIMAL(5,2),
    precipitation DECIMAL(4,2),
    measurement_date DATE NOT NULL,
    FOREIGN KEY (station_id) REFERENCES Station(station_id) ON DELETE CASCADE
);
