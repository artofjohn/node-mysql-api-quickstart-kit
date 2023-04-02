CREATE DATABASE IF NOT EXISTS patientsdb;
USE patientsdb;
DROP TABLE IF EXISTS patients;

CREATE TABLE patients
(
	id         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) DEFAULT NULL,
    last_name  VARCHAR(255) DEFAULT NULL,
    email      VARCHAR(255) DEFAULT NULL,
    address    VARCHAR(255) DEFAULT NULL,
    diagnosis  VARCHAR(255) DEFAULT NULL,
    phone      VARCHAR(30) DEFAULT NULL,
    gender     VARCHAR(10) DEFAULT NULL,
    dob        DATE DEFAULT NULL,
    status     VARCHAR(30) DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    image_url  VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (id),
    CONSTRAINT UQ_Patients_Email UNIQUE (email)
) AUTO_INCREMENT = 1;

INSERT INTO patients (
    first_name, 
    last_name, 
    email, 
    address, 
    diagnosis, 
    phone, 
    gender, 
    dob, 
    status, 
    image_url) 
    VALUES(
        'Harry',
        'Dresden',
        'hdresden@email.com',
        '123 Main St. Springfield, OH 43333',
        'Cough, Headache',
        '111-222-3333',
        'M',
        '1986-04-23',
        'Admitted',
        'http://localhost:3000/images/harry.jpg'
        );