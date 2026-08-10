use MyDatabase
CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
    )
    
select * from persons

delete from persons
where id = 4

rollback
update persons

SELECT
id,
first_name,
NULL,
'Unknown',
