/* Creates test database */
drop database test2;
create database test2;
use test2;

/* Create  Source for the creation script for the table */
source D:/Schoolwork/CPT242/Final_Project/create.sql;
show tables;

/* insert base data for certain foundational tables */
source D:/Schoolwork/CPT242/Final_Project/insert.sql;

/* insert "dummy" data from the Normalization Projects
source D:/Schoolwork/CPT242/Final_Project/dummy.sql; */

/* insert myself into the project */
source D:/Schoolwork/CPT242/Final_Project/insertself.sql;
