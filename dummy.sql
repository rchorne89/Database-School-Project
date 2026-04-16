insert into Person (Per_LastName, Per_FirstName, Gen_Code, Per_DOB)
values ('Doe', 'John', 'M', '1975-07-02'),
('Smith', 'Sally', 'F', '1995-04-21'),
('Hampton', 'Wade', 'M', '2001-10-17'),
('Doe', 'John', 'M', '1999-12-31')
;

insert into Phone(Pho_AreaCode, Pho_Exchange, Pho_Extension, Per_ID, CT_ID)
values ('864', '940', '1234', '1', '2'),
('864', '657', '0152', '1', '3'),
('864', '646', '1548', '1', '4'),
('864', '940', '8854', '2', '7'),
('864', '646', '8788', '2', '3'),
('202', '357', '5578', '2', '6'),
('864', '677', '1234', '3', '7'),
('864', '657', '0152', '4', '2')
;

insert into ZipCode(Zip_Code, Zip_City, Sta_Abbr)
values ('25779', 'Clemson', 'SC'),
('29624', 'Anderson', 'SC'),
('40010', 'Washington', 'DC'),
('25776', 'Pendelton', 'SC')
;

insert into Address(Add_House, Add_Street, Zip_Code, Per_ID, CT_ID)
values ('123', 'Main St', '25779', '1', '3'),
('101', 'Elm St', '29624', '2', '3'),
('146', '3rd Ave', '40010', '2', '6'),
('146', 'Mechanic St', '25776', '3', '3'),
('123', 'Main St', '25779', '4', '3')
;

insert into Semester(Trm_Num, Yr_Year)
values ('1A', '2017'),
('2A', '2017'),
('3A', '2017')
;

insert into Department (Dpt_Name)
values('English'),
('Math'),
('Computer Science')
;

insert into Subject(Sub_Abbr, Sub_Name, Dpt_ID)
values ('ENG', 'English', '1'),
('MAT', 'Math', '2'),
('CPT', 'Computer Technology', '3'),
('IST', 'Information Systems', '3')
;

insert into Course(Crs_Num, Sub_Abbr, Crs_Desc, Crs_Title, Crs_Hrs)
values ('114', 'CPT', 'Computers and Programming', 'Computers and Programming', '3'),
('167', 'CPT', 'Intro to Programming Logic', 'Intro to Programming Logic', '3'),
('170', 'CPT', 'Microcomputer Applications', 'Microcomputer Applications', '3'),
('270', 'CPT', 'Advanced Microcomputer Applications','Advanced Microcomputer Applications', '3'),
('155', 'ENG', 'Communications I', 'Communications I', '3'),
('155', 'MAT', 'College Math', 'College Math', '3')
;

insert into Section(Sec_Num, Sub_Abbr, Crs_ID, Trm_Num, Yr_Year)
values('000', 'CPT', '1', '1A', '2017'),
('000', 'CPT', '2', '1A', '2017'),
('000', 'CPT', '2', '2A', '2017'),
('000', 'CPT', '3', '1A', '2017'),
('000', 'ENG', '5', '1A', '2017'),
('000', 'MAT', '6', '2A', '2017'),
('000', 'CPT', '4', '2A', '2017'),
('000', 'ENG', '5', '3A', '2017'),
('000', 'CPT', '1', '3A', '2017'),
('000', 'MAT', '6', '3A', '2017')
;

insert into Student(Per_ID)
values('1'),
('2'),
('3'),
('4')
;

insert into Completion(Per_ID, Sec_ID, Grd_Sym)
values ('1', '1', 'A'),
('1', '2', 'F'),
('1', '3', 'C'),
('1', '4', 'B'),
('1', '5', 'B'),
('1', '6', 'C'),
('1', '7', 'A'),
('2', '1', 'B'),
('2', '4', 'B'),
('2', '7', 'B'),
('2', '8', 'B'),
('3', '8', 'A'),
('3', '9', 'C'),
('3', '10', 'C'),
('4', '4', 'W')
;