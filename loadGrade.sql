load data 
    infile 'c:/Users/rchor/OneDrive/Documents/Schoolwork/CPT242/Grade.csv'
into table Grade
    fields terminated by ','
    enclosed by '"'
    lines terminated by '\r\n'
(Grd_Sym, Grd_Desc, Grd_Credit, Grd_Pts, Grd_GPA)
;