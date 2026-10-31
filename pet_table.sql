-- Run this once in MySQL before starting the app.
CREATE DATABASE IF NOT EXISTS petdb;
USE petdb;

CREATE TABLE pet
(
    id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    type VARCHAR(30) NOT NULL,
    age INT
);
