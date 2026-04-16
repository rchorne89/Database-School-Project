set @who = '1'
;

select
    Person.Per_ID as ID,
    Per_FirstName as FirstName,
    Per_LastName as LastName
from Person
where Person.Per_ID = @who
;

select 
    Course.Sub_Abbr AS Sub,
    Crs_Num AS Number,
    Crs_Title AS Title,
    Trm_Desc AS Term,
    Sec_Num AS Section,
    Yr_Year AS Year,
    Completion.Grd_Sym AS Grade,
    Crs_Hrs AS Hours

from 
    Student
    join Completion on Student.Per_ID = Completion.Per_ID
    join Section on Completion.Sec_ID = Section.Sec_ID
    join Term on Section.Trm_Num = Term.Trm_Num
    join Course on Section.Crs_ID = Course.Crs_ID
    join Grade on Completion.Grd_Sym = Grade.Grd_Sym
where 
    Student.Per_ID = @who
;

select
    sum(Crs_Hrs) AS TTLPTS,
    sum(Crs_Hrs * Grd_Pts) TTLPTS,
    sum(Crs_Hrs * Grd_Pts) / sum(Crs_Hrs) as GPA

from 
    Student
    join Completion on Student.Per_ID = Completion.Per_ID
    join Section on Completion.Sec_ID = Section.Sec_ID
    join Term on Section.Trm_Num = Term.Trm_Num
    join Course on Section.Crs_ID = Course.Crs_ID
    join Grade on Completion.Grd_Sym = Grade.Grd_Sym
where 
    Student.Per_ID = @who
;