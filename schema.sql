-- Core Table
CREATE TABLE persons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    unique_id CHAR(11) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    father_name VARCHAR(100) NOT NULL,
    mother_name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL
);

-- Addresses Table
CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT NOT NULL,
    street_address VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    thana VARCHAR(100) NOT NULL,
    district VARCHAR(100) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    FOREIGN KEY (person_id) REFERENCES persons(id) ON DELETE CASCADE
);

-- Biometrics Table
CREATE TABLE biometrics (
    id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT NOT NULL,
    image BLOB NOT NULL,
    signature BLOB NOT NULL,
    iris_scan BLOB NOT NULL,
    fingerprint_scan BLOB NOT NULL,
    FOREIGN KEY (person_id) REFERENCES persons(id) ON DELETE CASCADE
);
