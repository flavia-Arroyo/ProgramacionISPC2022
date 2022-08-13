CREATE DATABASE pelu_canina;
use pelu_canina;

CREATE TABLE Dueno
(
DNI int,
Nombre varchar (25),
Apellido varchar (25),
Teléfono int,
Dirección varchar (25),
CONSTRAINT DNI PRIMARY KEY (DNI)
);

CREATE TABLE Perro 
(
Id_Perro int,
Nombre varchar (25),
Fecha_nac date ,
Sexo varchar(25),
DNI_Dueno int,
CONSTRAINT id_Perro PRIMARY KEY (Id_Perro),
CONSTRAINT f_dni FOREIGN KEY (DNI_Dueno) REFERENCES Dueno (DNI)
);

CREATE TABLE Historial
(
Id_Historial int,
Fecha date ,
Perro int,
Descripción text,
Monto float,
CONSTRAINT Id_historial PRIMARY KEY (Id_Historial),
CONSTRAINT f_perro FOREIGN KEY (Perro) REFERENCES Perro (Id_Perro) 
);
INSERT INTO dueno(
DNI,Nombre,Apellido,Teléfono,Dirección)VALUES
('26738292','María','Perez',157283920,'paisandu 1234'),
('4567899','Micaela','Reyes',155238965,'colon 1278'),
('34678943','Luciana','Miranda',15277890,'contursi 3278'),
('27453678','Jose','Pimentel',155378102,'valparaiso 2349'),
('37892901','Pedro','Luna',157129765,'disepolo 1256'),
('23895634','Pedro','Altamira',15378490,'sarmiento 2348')
;

insert into perro(
ID_Perro,Nombre,Fecha_nac,Sexo,DNI_Dueno)VALUE
(1,'Luli','2020-09-01','hembra',23895634),
(2,'Tobi','2017-06-04','macho',27453678),
(3,'Buqui','2015-01-01','hembra',23895634),
(4,'Inu','2021-11-25','hembra',4567899),
(5,'tomas','2014-12-20','macho',26738292),
(6,'nacho','2013-06-26','macho',27453678),
(7,'lalu','2017-03-13','hembra',34678943),
(8,'nunu','2020-09-01','hembra',37892901);

insert into historial(
id_Historial,Fecha,Perro,Descripción,Monto)VALUES
(1,'2015-07-13',3,' lavado',3000.00),
(2,'2017-05-10',1,' lavado',3000.00),
(3,'2018-06-16',3,'lavado y corte',4600.00),
(4,'2018-02-20',7,'lavado y corte',4600.00),
(5,'2019-05-6',8,'sepillado',5000.00),
(6,'2020-02-20',5,'desparatizar',7000.00),
(7,'2021-05-11',2,'lavado y corte',4600.00),
(8,'2021-03-26',4,'sepillado',5000.00),
(9,'2022-04-21',1,'desparatizar',7000.00),
(10,'2022-05-14',2,'desparatizar',7000.00),
(11,'2022-08-14',6,'desparatizar',7000.00),
(12,'2020-05-12',7,'sepillado',5000.00);

select * from perro;
select * from dueno; 
select * from historial;

UPDATE dueno
SET Dirección = "LIBERTAD 123" 
WHERE DNI = 4567899

select * from dueno;

