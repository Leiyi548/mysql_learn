-- Active: 1668794379152@@127.0.0.1@3306@mysqllearn

drop table if exists Patients;

create table
    Patients(
        patient_id int NOT NULL PRIMARY KEY COMMENT '病人 id',
        patient_name VARCHAR(255) COMMENT '病人名称',
        conditions VARCHAR(255) COMMENT '病人状态'
    ) COMMENT '病人表';

insert into
    Patients(
        patient_id,
        patient_name,
        conditions
    )
values (1, 'Deniel', 'YFEV COUGH'), (2, 'Alice', null), (3, 'Bob', 'DIAB100 MYOP'), (4, 'George', 'ACNE DIAB100'), (5, 'Alain', 'DIAB201');

select *
from patients
where
    conditions like "DIAB1%"
    or conditions like "% DIAB1%";