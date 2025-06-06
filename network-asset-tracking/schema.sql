-- Devices table
CREATE TABLE devices (
    device_id INT PRIMARY KEY,
    hostname VARCHAR(50),
    ip_address VARCHAR(15),
    type VARCHAR(20),        -- e.g., Laptop, Printer, Router
    os VARCHAR(50),
    purchase_date DATE,
    status VARCHAR(20)       -- 'active', 'retired', 'in repair'
);

-- Employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    location VARCHAR(50)
);

-- Assignments table
CREATE TABLE device_assignments (
    assignment_id INT PRIMARY KEY,
    device_id INT,
    employee_id INT,
    assigned_on DATE,
    returned_on DATE,
    FOREIGN KEY (device_id) REFERENCES devices(device_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
