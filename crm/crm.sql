-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

-- CREATE CONTACTS TABLE
DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone TEXT,
  title TEXT,
  company_id TEXT
);

-- CREATE ACTIVITIES TABLE
DROP TABLE IF EXISTS activities;
CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  contact_id TEXT,
  type TEXT,
  date TEXT,
  time TEXT,
  notes TEXT,
  salesperson_id TEXT
);

-- CREATE COMPANIES TABLE
DROP TABLE IF EXISTS companies;
CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_name TEXT
);

-- CREATE SALESPEOPLE TABLE
DROP TABLE IF EXISTS salespeople;
CREATE TABLE salespeople (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

-- CREATE INDUSTRIES TABLE
DROP TABLE IF EXISTS industries;
CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  industry TEXT,
  company_id TEXT
);