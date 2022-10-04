INSERT INTO employees
    (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES
    (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', TO_DATE('21.09.05', 'dd.mm.yyyy'), 'AD_VP', 17000, null, null, 90);

COMMIT;