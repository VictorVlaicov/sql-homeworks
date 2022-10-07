CREATE OR REPLACE TRIGGER count_departments
  AFTER INSERT OR DELETE ON departments
  FOR EACH ROW
DECLARE
    loc_id locations.location_id%type;
    update_count locations.department_amount%type;
BEGIN
    loc_id := :old.location_id;
    update_count := -1;
    IF loc_id IS NULL THEN
        loc_id := :new.location_id;
        update_count := 1;
    END IF;

    UPDATE locations
    SET department_amount = department_amount + update_count
        WHERE location_id = loc_id;
END;
