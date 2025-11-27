CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    score INT
);

INSERT INTO Students VALUES
(1, 'Arshu'),
(2, 'Poorna'),
(3, 'kaniz'),
(4, 'shree');

INSERT INTO Marks VALUES
(101, 1, 85),   
(102, 3, 92),    
(103, 5, 78);   

SELECT s.student_id, s.name, m.score
FROM Students s
INNER JOIN Marks m
    ON s.student_id = m.student_id;

SELECT s.student_id, s.name, m.score
FROM Students s
LEFT JOIN Marks m
    ON s.student_id = m.student_id;

SELECT s.student_id, s.name, m.score
FROM Students s
RIGHT JOIN Marks m
    ON s.student_id = m.student_id;


SELECT s.student_id, s.name, m.score
FROM Students s
LEFT JOIN Marks m
    ON s.student_id = m.student_id
UNION
SELECT s.student_id, s.name, m.score
FROM Students s
RIGHT JOIN Marks m
    ON s.student_id = m.student_id;
