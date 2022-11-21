-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn
DROP TABLE IF EXISTS Patients;

CREATE TABLE Patients(
    patient_id int NOT NULL PRIMARY KEY COMMENT '病人 id',
    patient_name VARCHAR(255) COMMENT '病人名称',
    conditions VARCHAR(255) COMMENT '病人状态'
) COMMENT '病人表';

INSERT INTO
    Patients(
        patient_id,
        patient_name,
        conditions
    )
VALUES
    (1, 'Deniel', 'YFEV COUGH'),
    (2, 'Alice', NULL),
    (3, 'Bob', 'DIAB100 MYOP'),
    (4, 'George', 'ACNE DIAB100'),
    (5, 'Alain', 'DIAB201');

SELECT
    *
FROM
    patients
WHERE
    conditions LIKE "DIAB1%"
    OR conditions LIKE "% DIAB1%";