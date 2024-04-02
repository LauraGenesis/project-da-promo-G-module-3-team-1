
CREATE DATABASE abc_proyecto;
USE abc_proyecto;


-- Crear la tabla 'detalles_personales'
CREATE TABLE Employee (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  attrition VARCHAR(45),
  age INT,
  datebirth INT, 
  gender VARCHAR(45), 
  maritalstatus VARCHAR(45), 
  distancefromhome FLOAT, 
  totalworkingyears FLOAT, 
  education INT,  
  educationfield VARCHAR(250) 
 );

CREATE TABLE Salary (
  id_salary INT AUTO_INCREMENT PRIMARY KEY,
  employee_id INT,
  hourlyrate FLOAT,
  dailyrate FLOAT,
  monthlyrate FLOAT,
  percentsalaryhike INT,
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) 
);

CREATE TABLE Satisfaction(
  id_satisfaction INT AUTO_INCREMENT PRIMARY KEY,
  employee_id INT,
  environmentsatisfaction FLOAT,
  jobinvolvement INT, 
  jobsatisfaction INT, 
  relationshipsatisfaction INT, 
  worklifebalance FLOAT,  
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) 
);

-- Crear la tabla 'condiciones'
CREATE TABLE Job(
  id_job INT AUTO_INCREMENT PRIMARY KEY,
  employee_id INT,
  businesstravel VARCHAR(45), 
  joblevel INT, 
  jobrole VARCHAR(45), 
  overtime VARCHAR(45), 
  stockoptionlevel INT, 
  numcompaniesworked INT,
  trainingtimeslastyear INT, 
  yearsatcompany INT, 
  yearssincelastpromotion INT, 
  yearswithcurrmanager INT, 
  remotework VARCHAR(45), 
  FOREIGN KEY (employee_id) REFERENCES Employee (employee_id) 
);


