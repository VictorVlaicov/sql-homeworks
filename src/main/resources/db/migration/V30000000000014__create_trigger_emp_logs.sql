CREATE OR REPLACE TRIGGER emp_logs
  AFTER INSERT OR DELETE ON employees
  FOR EACH ROW
BEGIN
    IF :old.employee_id IS NULL THEN
        insert_emp_logs(:new.first_name, :new.last_name, 'HIRED');
    ELSE
        insert_emp_logs(:old.first_name, :old.last_name, 'FIRED');
    END IF;
END;