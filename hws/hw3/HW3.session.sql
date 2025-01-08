CREATE VIEW StudentCredits AS
SELECT s.id,
    s.name,
    SUM(c.credit) AS total_credits
FROM Student s
    JOIN SC sc ON s.id = sc.student_id
    JOIN Course c ON sc.course_id = c.id
GROUP BY s.id,
    s.name;