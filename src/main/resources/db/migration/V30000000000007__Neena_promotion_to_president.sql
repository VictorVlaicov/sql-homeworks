INSERT INTO job_history
    (employee_id, start_date, end_date, job_id, department_id)
VALUES
    (101, TO_DATE('21.09.05', 'dd.mm.yyyy'), TO_DATE('13.04.12', 'dd.mm.yyyy'), 'AD_VP', 90);

UPDATE employees
    SET job_id = 'AD_PRES',
        salary = 240000
    WHERE employee_id = 101;

COMMIT;