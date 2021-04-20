
DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors
(
    id SERIAL PRIMARY KEY,
    doctor TEXT NOT NULL
);

INSERT INTO doctors
(doctor)
VALUES
('Dr.Doom'),
('Dr.Octogon'),
('Dr.Dre');

CREATE TABLE patients
(
    id SERIAL PRIMARY KEY,
    patient_name TEXT NOT NULL
);

INSERT INTO patients
(patient_name)
VALUES
('Marshall Mathers'),
('Slick Rick'),
('Russle Tyrone Jones'),
('Ghost Face'),
('Christopher Wallace');

CREATE TABLE appointments
(
    id SERIAL PRIMARY KEY,
    doctor INTEGER REFERENCES doctors (id),
    patient INTEGER REFERENCES patients (id)
);

INSERT INTO appointments
(doctor, patient)
VALUES
(1,1),
(1,4),
(2,2),
(3,1),
(3,3),
(3,4);






