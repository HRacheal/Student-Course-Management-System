CREATE TABLE Students (
  student_id INTEGER PRIMARY KEY,
  name TEXT,
  email TEXT
);

CREATE TABLE Courses (
  course_id INTEGER PRIMARY KEY,
  course_name TEXT,
  lecturer TEXT
);

CREATE TABLE Grades (
  grade_id INTEGER PRIMARY KEY,
  student_id INTEGER,
  course_id INTEGER,
  score INTEGER,
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Students
INSERT INTO students (student_id, name, email) VALUES
(1, 'Alice Mwangi', 'alice.mwangi@example.com'),
(2, 'Brian Otieno', 'brian.otieno@example.com'),
(3, 'Carol Njeri', 'carol.njeri@example.com'),
(4, 'David Kamau', 'david.kamau@example.com'),
(5, 'Esther Wanjiku', 'esther.wanjiku@example.com');

-- Courses
INSERT INTO courses (course_id, course_name, lecturer) VALUES
(101, 'Data Science', 'Dr. Achieng'),
(102, 'Machine Learning', 'Mr. Kiprono'),
(103, 'Cloud Computing', 'Ms. Njeri');

-- Grades
INSERT INTO grades (grade_id, student_id, course_id,score ) VALUES
(1, 1, 101, 88),
(2, 1, 102, 90),
(3, 2, 101, 76),
(4, 2, 103, 84),
(5, 3, 101, 92),
(6, 3, 102, 89),
(7, 4, 103, 73),
(8, 4, 101, 80),
(9, 5, 102, 85),
(10, 5, 103, 79);


--Queries
SELECT name, score
FROM Students JOIN Grades USING(student_id)
WHERE score > 70;
