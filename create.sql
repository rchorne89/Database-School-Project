create table Gender(
    Gen_Code char(1) not null,
    Gen_Desc varchar(10) not null,

    primary key (Gen_Code)
);

create table Person(
    Per_ID int auto_increment,
    Per_LastName varchar(20) not null,
    Per_FirstName varchar(20) not null,
    Per_MaidenName varchar(20) default '',
    Per_PrefName varchar(20) default '',
    Gen_Code char(1) not null,
    Per_DOB date not null default current_date(),

    primary key (Per_ID),
    foreign key (Gen_Code) references Gender(Gen_Code)
);

create table ConType(
    CT_ID int auto_increment,
    CT_Desc varchar(20) not null,

    primary key (CT_ID)
);

create table Email(
    Email_ID int auto_increment,
    Email_User varchar(25) not null,
    Email_Domain varchar(20) not null,
    Per_ID int not null,
    CT_ID int not null,

    primary key (Email_ID),
    
    foreign key (Per_ID) references Person(Per_ID),
    foreign key (CT_ID) references ConType(CT_ID)
);

create table Phone(
    Pho_ID int auto_increment,
    Pho_AreaCode int(3) not null,
    Pho_Exchange int(3) not null,
    Pho_Extension int(4) not null,
    Per_ID int not null,
    CT_ID int not null,

    primary key (Pho_ID),

    foreign key (Per_ID) references Person(Per_ID),
    foreign key (CT_ID) references ConType(CT_ID)
);

create table State(
    Sta_Abbr char(2) not null,
    Sta_Name varchar(25) not null,

    primary key (Sta_Abbr)
);

create table ZipCode(
    Zip_Code varchar(10) not null,
    Zip_City varchar(25) not null,
    Sta_Abbr char(2) not null,

    primary key (Zip_Code),

    foreign key (Sta_Abbr) references State(Sta_Abbr)
);

create table Address(
    Add_ID int auto_increment,
    Add_House varchar(20) not null,
    Add_Street varchar(20) not null,
    Zip_Code varchar(10) not null,
    Per_ID int not null,
    CT_ID int not null,

    primary key (Add_ID),

    foreign key (Per_ID) references Person(Per_ID),
    foreign key (CT_ID) references ConType(CT_ID)
); 

create table Term(
    Trm_Num char(2) not null,
    Trm_Desc varchar(10),
    Trm_Length int(2),

    primary key (Trm_Num)
);

create table Year(
    Yr_Year int(4) not null,

    primary key (Yr_Year)
);

create Table Semester(
    Sem_ID int auto_increment,
    Trm_Num char(2) not null,
    Yr_Year int(4) not null,
    Sem_Start Date default current_date(),
    Sem_End Date default current_date(),

    primary key (Sem_ID),

    foreign key (Trm_Num) references Term(Trm_Num),
    foreign key (Yr_Year) references Year(Yr_Year)
 );

 create table Grade(
    Grd_Sym char(1) not null,
    Grd_Desc varchar(20) not null,
    Grd_Credit bool not null,
    Grd_Pts int not null,
    Grd_GPA bool not null,

    primary key (Grd_Sym)
 );

 create table DegType(
    DT_ID int auto_increment,
    DT_Title varchar(15) not null,
    DT_Level int(2) not null,
    DT_Abbr char(5),

    primary key (DT_ID)
 );

create table Department(
    Dpt_ID int auto_increment,
    Dpt_Name varchar(35) not null,
    Per_ID int,

    primary key (Dpt_ID)
);

create table Faculty(
    Per_ID int not null,
    Dpt_ID int, 

    primary key (Per_ID),

    foreign key (Per_ID) references Person(Per_ID),
    foreign key (Dpt_ID) references Department(Dpt_ID) 
);

alter table Department
add foreign key (Per_ID) references Faculty(Per_ID);

create table Credential(
    Crd_ID int auto_increment,
    Crd_Title varchar(25) not null,
    DT_ID int,
    Crd_Year int(4) not null,
    Dpt_ID int,

    primary key (Crd_ID),

    foreign key (DT_ID) references DegType(DT_ID),
    foreign key (Dpt_ID) references Department(Dpt_ID)
);

create table Student(
    Per_ID int not null,
    Crd_ID int,

    primary key (Per_ID),

    foreign key (Per_ID) references Person(Per_ID),
    foreign key (Crd_ID) references Credential(Crd_ID)
);

create table Subject(
    Sub_Abbr char(3) not null,
    Sub_Name varchar(25) not null,
    Dpt_ID int,

    primary key (Sub_Abbr),

    foreign key (Dpt_ID) references Department(Dpt_ID)
);

create table Course(
    Crs_ID int auto_increment,
    Crs_Num int(3) not null,
    Sub_Abbr char(3) not null,
    Crs_Desc varchar(200) not null,
    Crs_Title varchar(25) not null,
    Crs_Hrs int not null,

    primary key (Crs_ID),

    foreign key (Sub_Abbr) references Subject(Sub_Abbr)
);

create table Section(
    Sec_ID int auto_increment,
    Sec_Num int(3) not null,
    Sub_Abbr char(3) not null,
    Crs_ID int not null,
    Per_ID int,
    Trm_Num char(2),
    Yr_Year int(4),

    primary key (Sec_ID),

    foreign key (Sub_Abbr) references Course(Sub_Abbr),
    foreign key (Crs_ID) references Course(Crs_ID),
    foreign key (Per_ID) references Faculty(Per_ID),
    foreign key (Trm_Num) references Semester(Trm_Num),
    foreign key (Yr_Year) references Semester(Yr_Year)
);

create table Completion(
    Cmp_ID int auto_increment,
    Per_ID int not null,
    Sec_ID int not null,
    Grd_Sym char(1),

    primary key (Cmp_ID),

    foreign key (Per_ID) references Student(Per_ID),
    foreign key (Sec_ID) references Section(Sec_ID),
    foreign key (Grd_Sym) references Grade(Grd_Sym)
);

create table PreReq(
    Prq_ID int auto_increment,
    Sub_Abbr char(3) not null,
    Crs_ID int not null,
    Prq_Sub_Abbr char(3) not null,
    Prq_Crs_ID int not null,

    primary key (Prq_ID),

    foreign key (Sub_Abbr) references Subject(Sub_Abbr),
    foreign key (Crs_ID) references Course(Crs_ID),
    foreign key (Prq_Sub_Abbr) references Subject(Sub_Abbr),
    foreign key (Prq_Crs_ID) references Course(Crs_ID)
 );

 create table Requirement(
    Req_ID int auto_increment,
    Crd_ID int not null,
    Crs_ID int not null,

    primary key (Req_ID),

    foreign key (Crd_ID) references Credential(Crd_ID),
    foreign key (Crs_ID) references Course(Crs_ID)
 );

 create table Graduation(
    Grad_ID int auto_increment,
    Per_ID int not null,
    Crd_ID int not null,
    Grad_Date Date not null,

    primary key (Grad_ID),

    foreign key (Per_ID) references Student(Per_ID),
    foreign key (Crd_ID) references Credential(Crd_ID)
 );

 create table Fulfillment(
    Ful_ID int auto_increment,
    Req_ID int not null,
    Cmp_ID int not null,

    primary key (Ful_ID),

    foreign key (Req_ID) references Requirement(Req_ID),
    foreign key (Cmp_ID) references Completion(Cmp_ID)
 );