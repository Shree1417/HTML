USE Task;
CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100),
    event_date DATE
);

INSERT INTO events (event_name, event_date) VALUES
('Summer Carnival', '2025-04-12'),
('Business Summit', '2025-07-22'),
('Food & Culture Fair', '2025-08-15'),
('Comedy Night Live', '2025-10-03'),
('Winter Lights Festival', '2025-12-20');

SELECT NOW() AS current_date_time;

SELECT event_name,DATE_FORMAT(event_date, '%W, %d %M %Y') AS formatted_date
FROM events;

SELECT event_name,YEAR(event_date) AS event_year,MONTH(event_date) AS event_month
FROM events;

SELECT id,CONCAT(event_name, ' - ', event_date) AS event_details
FROM events;