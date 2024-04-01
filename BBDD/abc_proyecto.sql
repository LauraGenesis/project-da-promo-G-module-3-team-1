
CREATE DATABASE abc_proyecto;
USE abc_proyecto;


-- Crear la tabla 'detalles_personales'
CREATE TABLE Empleados (
  id_empleado INT AUTO_INCREMENT PRIMARY KEY,
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

CREATE TABLE Salario (
  id_salary INT AUTO_INCREMENT PRIMARY KEY,
  hourlyrate FLOAT,
  dailyrate FLOAT,
  monthlyrate FLOAT,
  percentsalaryhike INT,
  id_empleado INT,
  FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado) 
);

CREATE TABLE Satisfaccion (
  id_satisfaccion INT AUTO_INCREMENT PRIMARY KEY,
  id_empleado INT,
  environmentsatisfaction FLOAT,
  jobinvolvement INT, 
  jobsatisfaction INT, 
  relationshipsatisfaction INT, 
  worklifebalance FLOAT,  
  FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado) 
);

-- Crear la tabla 'condiciones'
CREATE TABLE Trabajo(
  id_trabajo INT AUTO_INCREMENT PRIMARY KEY,
  id_empleado INT,
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
  FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado) 
);


