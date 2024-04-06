with
    dept_sal as (
        select department_name, sum(salary)
        from dbt_db.dbt_prod_sch.employees e
        join dbt_db.dbt_prod_sch.departments d on e.department_id = d.department_id
        group by department_name
    )
select *
from dept_sal
