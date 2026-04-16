insert into Gender(Gen_Code, Gen_Desc)
values ('M' , 'Male'),
('F' , 'Female'),
('O', 'Other')
;

insert into ConType(CT_Desc)
values ('Email'),
('Cell'),
('Home'),
('Work'),
('Campus'),
('Parent'),
('Mobile'),
('PO Box')
;

insert into State(Sta_Abbr, Sta_Name)
values ('SC', 'South Carolina'),
('DC', 'Distric of Columbia')
;

insert into Term(Trm_Num, Trm_Desc, Trm_Length)
values ('1A', 'Fall', '18'),
('2A', 'Spring A', '18'),
('3A', 'Summer', '9')
;

insert into Year(Yr_Year)
values ('2017'),
('2018'),
('2019'),
('2020'),
('2021'),
('2022'),
('2023'),
('2024'),
('2025')
;

insert into Grade(Grd_Sym, Grd_Desc, Grd_Credit, Grd_Pts, Grd_GPA)
values ('A', '90-100', '1', '4', '1'),
('B', '80-89', '1', '3', '1'),
('C', '70-79', '1', '2', '1'),
('D', '60-69', '1', '1', '1'),
('F', '0-59', '0', '0', '1'),
('W', 'Withdrawn', '0', '0', '0')
;

insert into DegType(DT_Title, DT_Level, DT_Abbr)
values ('Certificate', '1', 'CS'),
('Associate', '2', 'AS'),
('Bachelor', '4', 'BS')
;
