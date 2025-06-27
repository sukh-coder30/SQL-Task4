create database empdb;
use empdb;
-- Creating Employee Table
CREATE TABLE employee (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(50) NOT NULL,
    dept_name VARCHAR(50),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    hire_date DATE,
    INDEX idx_dept_name (dept_name),
    INDEX idx_salary (salary)
);

-- Inserting Sample Data
INSERT INTO employee (employee_name, dept_name, salary, bonus, hire_date) VALUES
('Amit Sharma', 'HR', 65000, 5000, '2020-01-15'),
('Rajesh Verma', 'Engineering', 85000, 7000, '2019-03-22'),
('Priya Singh', 'Marketing', 70000, 6000, '2021-07-01'),
('Ravi Patel', 'HR', 90000, 8000, '2018-06-12'),
('Neha Gupta', 'Finance', 45000, 3000, '2022-05-09'),
('Suresh Kumar', 'Engineering', 78000, 5000, '2020-08-15'),
('Anjali Mehta', 'Marketing', 66000, 4000, '2019-09-25'),
('Vikram Rao', 'Sales', 72000, 4500, '2021-04-18'),
('Kavita Das', 'Operations', 89000, 7500, '2017-11-30'),
('Manoj Nair', 'IT Support', 95000, 8500, '2016-07-22'),
('Sanjay Pandey', 'HR', 62000, 5200, '2023-03-05'),
('Divya Iyer', 'Engineering', 87000, 7200, '2018-02-14'),
('Pankaj Joshi', 'Marketing', 76000, 6200, '2015-12-28'),
('Ramesh Yadav', 'Finance', 92000, 8100, '2020-06-06'),
('Sonia Kapoor', 'Sales', 46000, 3100, '2022-01-23'),
('Akash Sinha', 'Operations', 79000, 5100, '2019-08-09'),
('Komal Saxena', 'IT Support', 67000, 4100, '2018-10-11'),
('Arvind Bajaj', 'HR', 73000, 4600, '2021-02-27'),
('Swati Bhatnagar', 'Engineering', 88000, 7400, '2017-09-13'),
('Deepak Mishra', 'Marketing', 94000, 8400, '2016-05-20'),
('Harish Malhotra', 'Sales', 72000, 4500, '2020-04-17'),
('Nidhi Aggarwal', 'Operations', 92000, 8100, '2023-01-01'),
('Mahesh Kulkarni', 'IT Support', 79000, 5100, '2019-11-10'),
('Anita Reddy', NULL, 67000, 4100, '2021-06-15'), -- No department
('Ujjwal Thakur', 'HR', 85000, 7000, '2018-04-19'),
('Rohan Bansal', 'Engineering', 92000, 8100, '2022-07-07'),
('Meera Pillai', 'Marketing', 76000, 6200, '2019-05-21'),
('Sunil Goswami', 'Finance', 46000, 3100, '2017-08-12'),
('Geeta Srivastava', 'Sales', 65000, 5000, '2020-10-29'),
('Naveen Saxena', 'Operations', 89000, 7500, '2021-12-14'),
('Tarun Khanna', 'IT Support', 72000, 4500, '2015-06-09'),
('Bhavna Jha', 'HR', 62000, 5200, '2022-03-25'),
('Sameer Desai', 'Engineering', 87000, 7200, '2023-02-10'),
('Sakshi Tiwari', 'Marketing', 94000, 8400, '2020-09-01'),
('Prakash Menon', 'Finance', 89000, 7500, '2019-07-04'),
('Simran Arora', 'Sales', 67000, 4100, '2018-11-28'),
('Yogesh Bhardwaj', 'Operations', 92000, 8100, '2022-05-12'),
('Kirti Khandelwal', 'IT Support', 78000, 5000, '2017-02-18'),
('Aakash Verma', NULL, 79000, 5100, '2021-08-30'), -- No department
('Shubham Chauhan', 'HR', 46000, 3100, '2016-03-10'),
('Varun Kohli', 'Engineering', 87000, 7200, '2022-12-05'),
('Tina Ghosh', 'Marketing', 94000, 8400, '2018-01-08'),
('Jatin Jain', 'Finance', 79000, 5100, '2020-02-22'),
('Amrita Das', 'Sales', 67000, 4100, '2019-04-13'),
('Gaurav Kapoor', 'Operations', 87000, 7200, '2017-09-28'),
('Rekha Bhatia', 'IT Support', 92000, 8100, '2023-07-07'),
('Aditya Roy', NULL, 65000, 5000, '2021-05-17'), -- No department
('Kunal Singh', 'Marketing', 46000, 3100, '2022-06-09'),
('Lata Tripathi', 'HR', 94000, 8400, '2020-11-19');

select*from employee;

/*SQL queries using SUM, COUNT, AVG, GROUP BY*/

select count(*) from employee;
select count(emp_id) from employee;

select count(distinct dept_name)
from employee;


select avg(salary), sum(salary)
from employee;

select dept_name, max(salary) as maxsal
from employee
group by dept_name;

select dept_name, (bonus) as misbonus
from employee
group by dept_name;

select dept_name, avg(salary) 
from employee
group by dept_name
having avg(salary)>60000;

select round(123.4567, 2)