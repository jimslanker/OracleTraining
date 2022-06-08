--------------------------------------------------------------------------------
-- Filename: QUERY_SALARY_EMPLOYEES.sql                                   --
-- Author: Jim Slanker                                                        --
-- Date: June 1st 2022                                                        --
--------------------------------------------------------------------------------
PROMPT >>Query Active Salary Employees joined with Colors Table
select xe.employee_id, xe.name, xe.employee_type, xe.annual_salary, xc.color_code
  from xxjs_employees xe,
       xxjs_colors xc
  where xe.employee_type = 'SALARY'
    and TERMINATION_DATE is null
    and xc.color_id (+) = xe.favorite_color_id;  