CREATE TABLE pay
(
    card_nr         NUMBER(4) NOT NULL PRIMARY KEY,
    salary          NUMBER(8, 2),
    commission_pct  NUMBER(2, 2),
    CONSTRAINT card_nr_pk
        FOREIGN KEY (card_nr)
        REFERENCES employees (employee_id)
);

COMMENT ON TABLE pay IS 'Pay table. contains salary data.';
COMMENT ON COLUMN pay.card_nr IS 'primary key and foreign key to field employee_id in the Employees table.';
COMMENT ON COLUMN pay.salary IS 'salary transferred from employees.';
COMMENT ON COLUMN pay.commission_pct IS 'commission transferred from employees.';

COMMIT;