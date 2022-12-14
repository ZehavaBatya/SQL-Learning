CREATE DATABASE practice;
USE practice;

CREATE TABLE person {
	person_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    ssn CHAR(9) UNIQUE  NOT NULL,
    dob DATE,
    gender CHAR(1) DEFAULT 'X'
					CHECK (gender IN('M', 'F', 'X'))
);

DESCRIBE person;

ALTER TABLE person ADD COLUMN fave_color;

DESCRIBE person;

DROP TABLE person;

CREATE TABLE address {
	address_id INT AUTO_INCREMENT,
    street VARCHAR(50),
    person_id INT,
    PRIMARY KEY (address_id),
    FOREIGN KEY (person_id)
		REFERENCES person (person_id)
};

DROP TABLE address;

CREATE TABLE person {
	person_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    ssn CHAR(9) UNIQUE  NOT NULL,
    dob DATE,
    gender CHAR(1) DEFAULT 'X'
					CHECK (gender IN('M', 'F', 'X'))
);

INSERT INTO person VALUES(null, 'hello', '123456789;, CURRENT_DATE(), 'F');

SELECT + FROM person;

TRUNCATE TABLE person;

SELECT + FROM person;
