-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);
-- Insert student data
INSERT INTO students ("first_name", "last_name", "email", "phone_number") VALUES ("Jane", "Doe", "jane@example.com","555-1212"); 
INSERT INTO students ("first_name", "last_name", "email", "phone_number") VALUES ("Jenny", "Smith", "jenny@gmail.com","867-5309"); 
INSERT INTO students ("first_name", "last_name", "email", "phone_number") VALUES ("John", "Johnson", "john@acme.com","456-7890"); 

-- Create the rest of the tables
-- Teacher table
CREATE TABLE teachers (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT,
last_name TEXT,
bio TEXT);
-- Insert teacher data
INSERT INTO teachers ("first_name", "last_name","bio") VALUES ("Ben", "Block", "A seasoned pro instructor.");
INSERT INTO teachers ("first_name", "last_name","bio") VALUES ("Brian", "Eng", "Loves tacos.");

-- Course table
CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);
-- Insert course data
INSERT INTO courses ("name", "description") VALUES ("Intro to Software Development","This course is focused on software development...");
INSERT INTO courses ("name", "description") VALUES ("Taco-Making 101","In this course, you'll learn how to build a proper taco...");

-- Section table
CREATE TABLE sections (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  course_id TEXT,
  teacher_id TEXT
);
-- Insert section data
INSERT INTO sections ("time","course_id","teacher_id") VALUES ("Tuesday 8:30-11:30","1","2");
INSERT INTO sections ("time","course_id","teacher_id") VALUES ("Wednesday 6-9pm","1","1");
INSERT INTO sections ("time","course_id","teacher_id") VALUES ("Wednesday 6-9pm","2","2");
INSERT INTO sections ("time","course_id","teacher_id") VALUES ("Thursday 6-9pm","2","1");

-- Enrollment table
CREATE TABLE enrollments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  section_id TEXT,
  student_id TEXT,
  status TEXT
);