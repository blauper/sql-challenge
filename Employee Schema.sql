CREATE TABLE Departments (
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE Dept_Emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Dept_Manager (
    emp_no INT NOT NULL,
    dept_no VARCHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Employees (
    emp_no INT NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    gender varchar(1) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
 );

CREATE TABLE Salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles (
    emp_no INT NOT NULL,
    title VARCHAR(30) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);