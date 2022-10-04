CREATE TABLE projects
(
    project_id NUMBER(6)                NOT NULL PRIMARY KEY,
    project_description VARCHAR2(255)   CHECK (LENGTH(project_description) > 10),
    project_investments NUMBER(10, -3)  CHECK (project_investments > 499)
);

CREATE TABLE emp_in_projects
(
    project_id NUMBER(6)    NOT NULL,
    employee_id NUMBER(6)   NOT NULL,
    employee_time           INT,
    CONSTRAINT project_id_fk
        FOREIGN KEY (project_id)
        REFERENCES projects (project_id),
    CONSTRAINT employee_id_fk
        FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id)
);

COMMIT;