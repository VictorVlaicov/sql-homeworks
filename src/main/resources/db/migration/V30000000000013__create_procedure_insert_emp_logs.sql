CREATE OR REPLACE PROCEDURE insert_emp_logs
(
    first_name employment_logs.first_name%TYPE,
    last_name employment_logs.last_name%TYPE,
    emp_action employment_logs.employment_action%TYPE
)
IS
BEGIN
    INSERT INTO employment_logs
        (first_name, last_name, employment_action, employment_status_updtd_tmstmp)
    VALUES (first_name, last_name, emp_action, SYSDATE);
END insert_emp_logs;
