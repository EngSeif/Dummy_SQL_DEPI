-- create table student
CREATE TABLE student(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(256) NOT NULL,
    age INT NOT NULL CHECK(age >= 18),
    major VARCHAR(256) DEFAULT 'Undeclared'
);

CREATE TABLE course (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(256) NOT NULL,
    credit INT NOT NULL CHECK(credit >= 1)
)

CREATE TABLE professor (
    professor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(256) NOT NULL,
    department VARCHAR(256) NOT NULL
)

INSERT INTO student(name, age, major) VALUES ('Awaden', 22, 'Engineering');

-- Insert Students
INSERT INTO student (name, age, major) VALUES ('Alice', 22, 'CS');
INSERT INTO student (name, age, major) VALUES ('Bob', 23, 'Math');
INSERT INTO student (name, age, major) VALUES ('Charlie', 21, 'Physics');
INSERT INTO student (name, age, major) VALUES ('David', 20, 'Chemistry');
INSERT INTO student (name, age, major) VALUES ('Eve', 24, 'Math');
 
-- Insert Courses
INSERT INTO course (course_name, credit) VALUES ('Database Systems', 3);
INSERT INTO course (course_name, credit) VALUES ('Linear Algebra', 4);
 
-- Insert Professors
INSERT INTO professor (name, department) VALUES ('Dr. Smith', 'Computer Science');
INSERT INTO professor (name, department) VALUES ('Dr. Johnson', 'Mathematics');
INSERT INTO professor (name, department) VALUES ('Dr. Brown', 'Physics');
 

-- show tables in DB
SHOW TABLES;

SELECT * FROM student;

ALTER TABlE student ADD COLUMN Email VARCHAR(256) UNIQUE;

ALTER TABlE student ADD COLUMN City VARCHAR(256);

UPDATE student SET Email = 'Awaden@example.com' WHERE student_id = 1;

DELETE FROM student WHERE student_id = 6;

