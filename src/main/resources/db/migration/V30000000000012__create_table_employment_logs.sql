CREATE TABLE employment_logs
(
    employment_log_id NUMBER(6) NOT NULL PRIMARY KEY,
    first_name VARCHAR2(20) NOT NULL,
    last_name VARCHAR2(25) NOT NULL,
    employment_action VARCHAR2(10) NOT NULL CHECK(employment_action = 'HIRED' OR employment_action = 'FIRED'),
    employment_status_updtd_tmstmp TIMESTAMP NOT NULL
);

CREATE SEQUENCE emp_log_seq INCREMENT BY 1 MAXVALUE 9990 NOCACHE;

ALTER TABLE employment_logs MODIFY employment_log_id DEFAULT emp_log_seq.nextval;