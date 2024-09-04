create database HospitalManagement12209;

use HospitalManagement12209



create table Ward(
	WNo varchar (20)primary key, Wname varchar(20), NoOfPatients int
	);

create table Doctor(
	DNo varchar (20) primary key, DName varchar(20), Address varchar(20), Telephone varchar(20), Wno varchar(20)
	Foreign key (WNo) REFERENCES Ward (WNo)
	);


create table Patient(
	AdNo varchar(20) primary key, PName varchar(20), Address varchar(20), Telephone int, D_Ad date, Wno varchar(20), DNo varchar (20)
	Foreign key (Wno) REFERENCES Ward(WNo),
	Foreign key(DNo) REFERENCES Doctor (DNo)
	);

create table Treatment(
	TNo varchar(20) primary key , Description varchar(40)	
	);

create table prescription(
	Ano varchar(20) , Tnum varchar (20), Dosage int,
	Foreign key (Ano)  References Patient (AdNo) ,
	Foreign key (Tnum) References Treatment(TNo)
	);

create table specialization(
	DId varchar (20), specialization varchar(20),
	Foreign key  (DId) References Doctor(Dno)
	);

Select * From Ward
Select * From  Doctor
Select * From  Patient
Select * From Treatment
Select * From prescription
Select * From specialization

Insert into Ward values ( 'W01', 'Pedeatric', '43') 
Insert into Ward values ( 'W02', 'obstetric', '55')
Insert into Ward values ( 'W03','Psychiatric','20')
Insert into Ward values ( 'W04','Çardiology', '25')

Insert into Doctor values ('DN001', 'Sugathadasa', 'Kottawa', 0765693695, 'W01')
Insert into Doctor values ('DN002', 'Namal', 'Negombo', 0765626356, 'W02')	
Insert into Doctor values ('DN003', 'Kamal', 'Kandy', 0765263656, 'W03')
Insert into Doctor values ('DN004', 'Shamal', 'Gampaha', 076525656, 'W04')

Insert into Patient values ('P001', 'Kasun', 'Peralanda', '0766848281', '2024.03.03', 'W01', 'DN001')
Insert into Patient values ('P002', 'Ranil', 'Colombo', '0773323365', '2024.11.04', 'W02', 'DN002')
Insert into Patient values ('P003', 'Anupama', 'Kadawataha', '07666093360', '2024.11.22' , 'W03', 'DN003')
Insert into Patient values ('P004', 'Delipa', 'Panadura', '0765693652', '2024.12.06', 'W04', 'DN004')

Insert into Treatment values('T01', 'Despription_bla_bla_bla')
Insert into Treatment values('T02', 'Despription01_bla_bla_bla')

Insert into prescription values('P001',
