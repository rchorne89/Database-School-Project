insert into Person (Per_LastName, Per_FirstName, Per_PrefName, Gen_Code, Per_DOB)
values ('Horne', 'Robert', 'Christain', 'M', '1989-03-18')
;

insert into Person (Per_LastName, Per_FirstName, Gen_Code)
values ('Unknown', 'Instructor', 'O'), /*2*/
('Hoover', 'Deborah', 'F'), /*3*/
('Konieczny', 'Suzanne', 'F'), /*4*/
('Smith', 'Phillip', 'M'), /*5*/
('Pittman', 'Sheila', 'F'), /*6*/
('Davis', 'Beverly', 'F'), /*7*/
('Fiori', 'George', 'M'), /*8*/
('Humphries', 'Amanda', 'F') /*9*/
;

insert into Phone(Pho_AreaCode, Pho_Exchange, Pho_Extension, Per_ID, CT_ID)
values ('864', '526', '7303', '1', '2')
;

insert into ZipCode(Zip_Code, Zip_City, Sta_Abbr)
values ('29669', 'Pelzer', 'SC')
;

insert into Address(Add_House, Add_Street, Zip_Code, Per_ID, CT_ID)
values ('2', 'Green St', '29669', '1', '3')
;

insert into Term(Trm_Num, Trm_Desc, Trm_Length)
values ('3T', 'Summer Transfer', '0'),
('2C', 'Spring C', '6')
;

insert into Semester(Trm_Num, Yr_Year)
values ('3T', '2023'),
('1A', '2023'),
('2A', '2024'),
('2C', '2024'),
('3A', '2024'),
('1A', '2024')
;

insert into Department(Dpt_Name)
values ('Unknown'),
('English'),
('Math'),
('Computer Science'),
('Art')
;

insert into Faculty(Per_ID, Dpt_ID)
values('2','1'),
('3','4'),
('4','4'),
('5','4'),
('6','4'),
('7','4'),
('8','4'),
('9','2')
;

Update Department
Set Per_ID = '2'
Where Dpt_ID = '1'
;

Update Department
Set Per_ID = '2'
Where Dpt_ID = '2'
;

Update Department
Set Per_ID = '4'
Where Dpt_ID = '3'
;

Update Department
Set Per_ID = '2'
Where Dpt_ID = '4'
;

insert into Credential(Crd_Title, DT_ID, Crd_Year, Dpt_ID)
values('Computer Technican', '1', '2023', '4'),
('Computer Technology', '2', '2025', '4')
;

insert into Student(Per_ID, Crd_ID)
values('1','1')
;

insert into Subject(Sub_Abbr, Sub_Name, Dpt_ID)
values ('ENG', 'English', '2'),
('MAT', 'Math', '3'),
('CPT', 'Computer Technology', '4'),
('IST', 'Information Systems', '4'),
('ART', 'Art', '5')
;

insert into Course(Crs_Num, Sub_Abbr, Crs_Desc, Crs_Title, Crs_Hrs)
values ('101', 'ENG', 'English Composition', 'English Composition I', '3'),
('167', 'CPT', 'Intro to Programming Logic', 'Intro to Programming Logic', '3'),
('170', 'CPT', 'Microcomputer Applications', 'Microcomputer Applications', '3'),
('176', 'CPT', 'Microcomputer Operating System', 'Microcomputer Operating System', '3'),
('234', 'CPT', 'C Programming', 'C Programming I', '3'),
('285', 'CPT', 'PC Hardware Concepts', 'PC Hardware Concepts', '3'),
('191', 'IST', 'LINUX System Administration', 'LINUX System Administration', '3'),
('220', 'IST', 'Data Comunications', 'Data Comunications', '3'),
('222', 'IST', 'Intro to Webpage Production', 'Intro to Webpage Production', '3'),
('270', 'CPT', 'Advanced Microcomputer Applications', 'Advanced Microcomputer Applications', '3'),
('236', 'CPT', 'Introduction to Java Programming', 'Introduction to Java Programming', '3'),
('242', 'CPT', 'Database', 'Database', '3'),
('101', 'ART', 'Art History and Appreciation', 'Art History and Appreciation', '3'),
('102', 'MAT', 'Intermediate Algebra', 'Intermediate Algebra', '3')
;

insert into Section(Sec_Num, Sub_Abbr, Crs_ID, Per_ID, Trm_Num, Yr_Year)
values('033', 'ENG', '1', '9', '1A', '2024'),
('002', 'CPT', '2', '4', '1A', '2023'),
('009', 'CPT', '3', '3', '1A', '2023'),
('002', 'CPT', '4', '6', '2C', '2024'),
('002', 'CPT', '5', '8', '3A', '2024'),
('000', 'CPT', '6', '2', '3T', '2023'),
('002', 'IST', '7', '5', '3A', '2024'),
('000', 'IST', '8', '2', '3T', '2023'),
('003', 'IST', '9', '5', '2A', '2024'),
('001', 'CPT', '10', '7', '2A', '2024'),
('001', 'CPT', '11', '8', '1A', '2024'),
('001', 'CPT', '12', '5', '1A', '2024'),
('000', 'ART', '13', '2', '3T', '2023'),
('000', 'MAT', '14', '2', '3T', '2023')
;

insert into Completion(Per_ID, Sec_ID, Grd_Sym)
values ('1', '1', 'A'),
('1', '2', 'A'),
('1', '3', 'A'),
('1', '4', 'B'),
('1', '5', 'B'),
('1', '6', 'C'),
('1', '7', 'A'),
('1', '8', 'C'),
('1', '9', 'A'),
('1', '10', 'A'),
('1', '11', 'B'),
('1', '12', 'C'),
('1', '13', 'C'),
('1', '14', 'A')
;