/*
select <field names>
from <table name>
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/<filename>.csv' 
    *(This is just the OneDrive File to use for testing. Be sure to change the address on your PC for storage.)*
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;
*/

select Gen_Code, Gen_Desc
from Gender
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Gender.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select CT_ID, CT_Desc
from ConType
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/ConType.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Sta_Abbr, Sta_Name
from State
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/State.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Trm_Num, Trm_Desc, Trm_Length
from Term
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Term.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Yr_Year
from Year
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Year.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Grd_Sym, Grd_Desc, Grd_Credit, Grd_Pts, Grd_GPA
from Grade
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Grade.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select DT_ID, DT_Title, DT_Level, DT_Abbr
from DegType
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/DegType.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Per_ID, Per_LastName, Per_FirstName, Per_PrefName, Gen_Code, Per_DOB
from Person
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Person.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Email_ID, Email_User, Email_Domain
from Email
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Email.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Pho_ID, Pho_AreaCode, Pho_Exchange, Pho_Extension, Per_ID, CT_ID
from Phone
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Phone.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Zip_Code, Zip_City, Sta_Abbr
from ZipCode
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/ZipCode.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Add_ID, Add_House, Add_Street, Zip_Code, Per_ID, CT_ID
from Address
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Address.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Sem_ID, Trm_Num, Yr_Year, Sem_Start, Sem_End
from Semester
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Semester.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Dpt_ID, Dpt_Name, Per_ID
from Department
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Department.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Per_ID, Dpt_ID
from Faculty
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Faculty.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Crd_ID, Crd_Title, DT_ID, Crd_Year, Dpt_ID
from Credential
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Credential.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Per_ID, Crd_ID
from Student
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Student.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Sub_Abbr, Sub_Name, Dpt_ID
from Subject 
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Subject.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Crs_ID, Crs_Num, Sub_Abbr, Crs_Desc, Crs_Title, Crs_Hrs
from Course
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Course.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Sec_ID, Sec_Num, Sub_Abbr, Crs_ID, Per_ID, Trm_Num, Yr_Year
from Section
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Section.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Cmp_ID, Per_ID, Sec_ID, Grd_Sym
from Completion
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Completion.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Grad_ID, Per_ID, Crd_ID, Grad_Date
from Graduation
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Graduation.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Prq_ID, Sub_Abbr, Crs_ID, Prq_Sub_Abbr, Prq_Crs_ID
from PreReq
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/PreReq.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Req_ID, Crd_ID, Crs_ID
from Requirement
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Requirement.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;

select Ful_ID, Req_ID, Cmp_ID
from Fulfillment
into outfile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Fulfillment.csv'
fields enclosed by '"'
terminated by ','
escaped by '"'
lines terminated by '\r\n'
;