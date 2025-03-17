-- (25 points)(newsletter scenario)
SELECT measurement_date, avg_temperature, precipitation, station_name
FROM ClimateMeasurement cm
JOIN Station s ON cm.station_id = s.station_id
WHERE measurement_date > '2022-03-10'
ORDER BY measurement_date ASC;

-- (12 points) (not yet approved scenario)
INSERT INTO ClimateMeasurement (station_id, measurement_date, avg_temperature, precipitation)
VALUES (1, '2024-04-01', NULL, NULL);

-- (30 points) (assuming a 'created_at' column exists)
SELECT station_name, latitude, longitude, created_at
FROM Station
WHERE EXTRACT(YEAR FROM created_at) = 2020
ORDER BY created_at DESC;

-- (13 points) Compute total precipitation recorded
SELECT SUM(precipitation) AS total_precipitation
FROM ClimateMeasurement;

-- (sample provided) Compute average temperature
SELECT AVG(avg_temperature) AS average_temperature
FROM ClimateMeasurement;

-- (55 points) Report stations 
SELECT s.station_name, SUM(cm.precipitation) AS total_precipitation
FROM ClimateMeasurement cm
JOIN Station s ON cm.station_id = s.station_id
GROUP BY s.station_name
HAVING SUM(cm.precipitation) > 20;

-- (80 points) (sample scenario)
UPDATE Station
SET station_name = 'Updated Chicago Station'
WHERE station_name = 'Chicago Station';
